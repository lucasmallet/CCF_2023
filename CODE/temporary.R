prop_read_ID <- sum(taxeco_id$Cluster_Size)/sum(raw_f_clust$Cluster_Size)*100
prop_read_ID

htmap_fanga <- pheatmap::pheatmap(mat = t(occurence_fanga), 
                                  cellwidth = 30, cellheight = 7,
                                  cluster_row = F, cluster_col = F,
                                  fontsize_row = 7, fontsize_col = 10,
                                  color = pal_ht,
                                  annotation_col = df_color_bis,
                                  annotation_colors = c(anot_colors_year, anot_colors_treat),
                                  main = "% OTU occurence by zone (F1)",
                                  display_numbers = F, 
                                  number_format = "%.0f", 
                                  fontsize_number = 5,
                                  na_col = "white")
