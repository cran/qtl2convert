context("Convert map list to data frame")

test_that("map_list_to_df works", {

    map_list <- structure(list(`1` = structure(c(0.424118388815167, 0.041241020125091,
                               0.466051450603133, 0.0654810203913158, 0.0241660935186957),
                               .Names = c("JAX00240989", "JAX00240649", "UNCJPD009180", "JAX00240804", "JAX00240610")),
                               `2` = structure(c(0.182846980321827, 0.182407517001796, 0.130917988391064,
                               0.000412833594312019, 0.000640569383198255),
                               .Names = c("UNCHS003854", "UNCHS003852", "UNCHS003846", "JAX00482049", "JAX00482064")),
                               `10` = structure(c(0.0163163877989646, 0.00740695778637858,
                               0.0124106069176088, 0.0203760400795549, 0.0208142757155046),
                               .Names = c("JAX00281864", "ICR260", "JAX00014570", "JAX00281798",
                               "ICR4249")),
                               X = structure(c(0.827432787823843, 0.235740657791282,
                               0.397500188730613, 0.0507409752570731, 0.501406880974154),
                               .Names = c("JAX00708681",
                               "JAX00708630r", "UNCHS048201", "JAX00176676", "UNCHS048205"
                               ))), .Names = c("1", "2", "10", "X"))
    attr(map_list, "is_x_chr") <- c("1"=FALSE, "2"=FALSE, "10"=FALSE, "X"=TRUE)

    expected <-  structure(list(chr = c("1", "1", "1", "1", "1",
                                "2", "2", "2", "2", "2", "10", "10", "10",
                                "10", "10", "X", "X", "X", "X", "X"),
                          cM = c(0.424118388815167, 0.041241020125091,
                          0.466051450603133, 0.0654810203913158, 0.0241660935186957, 0.182846980321827,
                          0.182407517001796, 0.130917988391064, 0.000412833594312019, 0.000640569383198255,
                          0.0163163877989646, 0.00740695778637858, 0.0124106069176088,
                          0.0203760400795549, 0.0208142757155046, 0.827432787823843, 0.235740657791282,
                          0.397500188730613, 0.0507409752570731, 0.501406880974154),
                                marker = c("JAX00240989", "JAX00240649", "UNCJPD009180",
                          "JAX00240804", "JAX00240610", "UNCHS003854", "UNCHS003852", "UNCHS003846",
                          "JAX00482049", "JAX00482064", "JAX00281864", "ICR260", "JAX00014570",
                          "JAX00281798", "ICR4249", "JAX00708681", "JAX00708630r", "UNCHS048201",
                          "JAX00176676", "UNCHS048205")),
                     .Names = c("chr", "cM", "marker"), class = "data.frame",
                     row.names = c("JAX00240989", "JAX00240649", "UNCJPD009180",
                          "JAX00240804", "JAX00240610", "UNCHS003854", "UNCHS003852", "UNCHS003846",
                          "JAX00482049", "JAX00482064", "JAX00281864", "ICR260", "JAX00014570",
                          "JAX00281798", "ICR4249", "JAX00708681", "JAX00708630r", "UNCHS048201",
                     "JAX00176676", "UNCHS048205"))

    expect_equal(map_list_to_df(map_list, pos_column="cM"), expected)

    expect_equal(map_df_to_list( map_list_to_df(map_list, pos_column="cM"), pos_column="cM"), map_list)

})
