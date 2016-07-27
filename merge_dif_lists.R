merge_dif_lists <- function(x){ df_principal <- as.data.frame(x[1])
  for (i in 1:(length(x)-1))
  {
    df_auxiliar <- as.data.frame(x[i+1])
    df_principal <- rbind.fill(df_principal,df_auxiliar)
  }
  return(df_principal)
}