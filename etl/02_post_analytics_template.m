let
    Source = Excel.CurrentWorkbook(){[Name="TableauScreenshots"]}[Content],
    #"Type modifie" = Table.TransformColumnTypes(Source,{{"Column1", type text}}),
    #"Fractionner la colonne par delimiteur" = Table.SplitColumn(
        #"Type modifie",
        "Column1",
        Splitter.SplitTextByDelimiter(";", QuoteStyle.Csv),
        {
            "ID","Date","Title","Hashtags","Views","Likes","Comms","Shares","Favorites",
            "Total_Play_Time","Avg_Watch_Time","Full_Video_%","New_Followers","Rewards",
            "Source_FYP","Source_Profile","Source_Search","Source_Following","Source_Other","Source_Sound",
            "Query1_Name","Query1_%","Query2_Name","Query2_%","Query3_Name","Query3_%","Query4_Name","Query4_%","Query5_Name","Query5_%",
            "Total_Viewers","New_Viewers_%","Returning_Viewers_%","Non_Followers_%","Followers_%",
            "Age_18_24","Age_25_34","Age_35_44","Age_45_54","Age_55_plus",
            "Gender_Female","Gender_Male","Gender_Other",
            "Loc1_Name","Loc1_%","Loc2_Name","Loc2_%","Loc3_Name","Loc3_%","Loc4_Name","Loc4_%","Loc5_Name","Loc5_%"
        }
    ),
    #"En-tetes promus" = Table.PromoteHeaders(#"Fractionner la colonne par delimiteur", [PromoteAllScalars=true]),
    #"Type modifie2" = Table.TransformColumnTypes(#"En-tetes promus",{{"ID", type text}, {"Date", type text}, {"Title", type text}, {"Hashtags", type text}}),
    #"Title_Clean ajoute" = Table.AddColumn(#"Type modifie2", "Title_Clean", each Text.Start(Text.Select(Text.Lower(Text.Trim([Title])), {"a".."z","0".."9"}), 20), type text),
    #"Video_ID ajoute" = Table.AddColumn(#"Title_Clean ajoute", "Video_ID", each try Date.ToText(Date.FromText([Date], "fr-FR"), "yyyyMMdd") & "_" & [Title_Clean] otherwise null, type text)
in
    #"Video_ID ajoute"
