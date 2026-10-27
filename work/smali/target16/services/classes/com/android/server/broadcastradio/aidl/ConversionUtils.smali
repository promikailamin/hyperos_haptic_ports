.class public abstract Lcom/android/server/broadcastradio/aidl/ConversionUtils;
.super Ljava/lang/Object;
.source "ConversionUtils.java"


# direct methods
.method public static synthetic $r8$lambda$5BNW2R6Mrq7TNyIBTYq_zExTvbc(I)[Landroid/hardware/broadcastradio/ProgramIdentifier;
    .registers 1

    .line 413
    new-array p0, p0, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    return-object p0
.end method

.method public static synthetic $r8$lambda$GjniY_a6MHpBUMB3Bwajra05_ZU(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 1

    .line 294
    new-array p0, p0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object p0
.end method

.method public static synthetic $r8$lambda$KZ7tTfXftYW6kEdF33oqtGf2JWE(I)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .registers 1

    .line 173
    new-array p0, p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object p0
.end method

.method public static synthetic $r8$lambda$ddUIRVUf_qDHtPrR8GOfi-N3Vb4(I)[Landroid/hardware/broadcastradio/ProgramIdentifier;
    .registers 1

    .line 728
    new-array p0, p0, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    return-object p0
.end method

.method public static alertAreaFromHalAlertArea(Landroid/hardware/broadcastradio/AlertArea;)Landroid/hardware/radio/RadioAlert$AlertArea;
    .registers 6

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 585
    :goto_7
    iget-object v3, p0, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    array-length v4, v3

    if-ge v2, v4, :cond_1a

    .line 586
    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->polygonFromHalPolygon(Landroid/hardware/broadcastradio/Polygon;)Landroid/hardware/radio/RadioAlert$Polygon;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 588
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 591
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 592
    :goto_22
    iget-object v3, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    array-length v4, v3

    if-ge v1, v4, :cond_33

    .line 593
    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->geocodeFromHalGeocode(Landroid/hardware/broadcastradio/Geocode;)Landroid/hardware/radio/RadioAlert$Geocode;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 595
    :cond_33
    new-instance p0, Landroid/hardware/radio/RadioAlert$AlertArea;

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/RadioAlert$AlertArea;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public static alertInfoFromHalAlertInfo(Landroid/hardware/broadcastradio/AlertInfo;)Landroid/hardware/radio/RadioAlert$AlertInfo;
    .registers 10

    .line 600
    iget-object v0, p0, Landroid/hardware/broadcastradio/AlertInfo;->categoryArray:[I

    array-length v0, v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    move v1, v0

    .line 601
    :goto_7
    iget-object v3, p0, Landroid/hardware/broadcastradio/AlertInfo;->categoryArray:[I

    array-length v4, v3

    if-ge v1, v4, :cond_13

    .line 604
    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 606
    :cond_13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 607
    :goto_18
    iget-object v1, p0, Landroid/hardware/broadcastradio/AlertInfo;->areas:[Landroid/hardware/broadcastradio/AlertArea;

    array-length v3, v1

    if-ge v0, v3, :cond_29

    .line 608
    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->alertAreaFromHalAlertArea(Landroid/hardware/broadcastradio/AlertArea;)Landroid/hardware/radio/RadioAlert$AlertArea;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 616
    :cond_29
    new-instance v1, Landroid/hardware/radio/RadioAlert$AlertInfo;

    iget v3, p0, Landroid/hardware/broadcastradio/AlertInfo;->urgency:I

    iget v4, p0, Landroid/hardware/broadcastradio/AlertInfo;->severity:I

    iget v5, p0, Landroid/hardware/broadcastradio/AlertInfo;->certainty:I

    iget-object v6, p0, Landroid/hardware/broadcastradio/AlertInfo;->description:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/broadcastradio/AlertInfo;->language:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Landroid/hardware/radio/RadioAlert$AlertInfo;-><init>([IIIILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public static amfmConfigToBands(Landroid/hardware/broadcastradio/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 259
    new-array v0, v1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0

    .line 262
    :cond_8
    iget-object v2, v0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    array-length v2, v2

    .line 263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    if-ge v1, v2, :cond_6c

    .line 269
    iget-object v4, v0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/Utils;->getBand(I)Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    move-result-object v4

    .line 270
    sget-object v5, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    if-ne v4, v5, :cond_36

    .line 271
    iget-object v4, v0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "BcRadioAidlSrv.convert"

    const-string v6, "Unknown frequency band at %d kHz"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_69

    .line 274
    :cond_36
    sget-object v5, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->FM:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    const/4 v7, 0x0

    if-ne v4, v5, :cond_55

    .line 275
    new-instance v6, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    iget-object v4, v0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v1

    iget v9, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    iget v10, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    iget v11, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/4 v8, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v6 .. v16}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(IIIIIZZZZZ)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 284
    :cond_55
    new-instance v6, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    iget-object v4, v0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v1

    iget v9, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    iget v10, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    iget v11, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    const/4 v12, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(IIIIIZ)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 294
    :cond_6c
    new-instance v0, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public static announcementFromHalAnnouncement(Landroid/hardware/broadcastradio/Announcement;)Landroid/hardware/radio/Announcement;
    .registers 4

    .line 810
    new-instance v0, Landroid/hardware/radio/Announcement;

    iget-object v1, p0, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 811
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    const-string v2, "Program selector can not be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/hardware/radio/ProgramSelector;

    iget-byte v2, p0, Landroid/hardware/broadcastradio/Announcement;->type:B

    iget-object p0, p0, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 814
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/radio/Announcement;-><init>(Landroid/hardware/radio/ProgramSelector;ILjava/util/Map;)V

    return-object v0
.end method

.method public static configFlagMeetsSdkVersionRequirement(II)Z
    .registers 3

    .line 801
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isAtLeastV(I)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_12

    const/16 p1, 0xb

    if-eq p0, p1, :cond_10

    const/16 p1, 0xa

    if-eq p0, p1, :cond_10

    return v0

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    return v0
.end method

.method public static convertChunkToTargetSdkVersion(Landroid/hardware/radio/ProgramList$Chunk;I)Landroid/hardware/radio/ProgramList$Chunk;
    .registers 7

    .line 781
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 782
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->getModified()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 783
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 784
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 785
    invoke-static {v2, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 786
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 789
    :cond_23
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 790
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->getRemoved()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 791
    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 792
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 793
    invoke-virtual {v3}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 794
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 797
    :cond_4a
    new-instance p1, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result p0

    invoke-direct {p1, v2, p0, v0, v1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-object p1
.end method

.method public static dabConfigFromHalDabTableEntries([Landroid/hardware/broadcastradio/DabTableEntry;)Ljava/util/Map;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 303
    :cond_4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 304
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 305
    aget-object v2, p0, v1

    iget-object v3, v2, Landroid/hardware/broadcastradio/DabTableEntry;->label:Ljava/lang/String;

    iget v2, v2, Landroid/hardware/broadcastradio/DabTableEntry;->frequencyKhz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1d
    return-object v0
.end method

.method public static filterToHalProgramFilter(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/ProgramFilter;
    .registers 8

    if-nez p0, :cond_7

    .line 705
    new-instance p0, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {p0}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    .line 708
    :cond_7
    new-instance v0, Landroid/hardware/broadcastradio/ProgramFilter;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramFilter;-><init>()V

    .line 710
    new-instance v1, Landroid/util/IntArray;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 711
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 712
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 713
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 714
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_26

    .line 716
    :cond_3a
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 717
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 718
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 719
    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v5

    .line 720
    iget v6, v5, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-eqz v6, :cond_5a

    .line 721
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 723
    :cond_5a
    const-string v5, "Invalid identifiers: %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "BcRadioAidlSrv.convert"

    invoke-static {v6, v5, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    .line 727
    :cond_66
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->identifierTypes:[I

    .line 728
    new-instance v1, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->identifiers:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 729
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->includeCategories:Z

    .line 730
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/broadcastradio/ProgramFilter;->excludeModifications:Z

    return-object v0
.end method

.method public static geocodeFromHalGeocode(Landroid/hardware/broadcastradio/Geocode;)Landroid/hardware/radio/RadioAlert$Geocode;
    .registers 3

    .line 579
    new-instance v0, Landroid/hardware/radio/RadioAlert$Geocode;

    iget-object v1, p0, Landroid/hardware/broadcastradio/Geocode;->valueName:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/broadcastradio/Geocode;->value:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/RadioAlert$Geocode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static halResultToTunerResult(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_14

    const/4 p0, 0x7

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    :pswitch_11
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 5

    .line 367
    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/4 v1, 0x5

    const/16 v2, 0xe

    if-ne v0, v1, :cond_d

    move v0, v2

    goto :goto_11

    :cond_d
    if-ne v0, v2, :cond_11

    const/16 v0, 0xf

    .line 378
    :cond_11
    :goto_11
    new-instance v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-wide v2, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    invoke-direct {v1, v0, v2, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    return-object v1
.end method

.method public static identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z
    .registers 5

    .line 737
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isAtLeastV(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 738
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_10

    return v1

    .line 742
    :cond_10
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isAtLeastU(I)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_21

    .line 743
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result p0

    const/16 p1, 0xe

    if-eq p0, p1, :cond_20

    return v0

    :cond_20
    return v1

    :cond_21
    return v0
.end method

.method public static identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;
    .registers 6

    .line 347
    new-instance v0, Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramIdentifier;-><init>()V

    .line 348
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0xe

    if-ne v1, v3, :cond_11

    .line 349
    iput v2, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    goto :goto_22

    .line 350
    :cond_11
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    const/16 v4, 0xf

    if-ne v1, v4, :cond_1c

    .line 351
    iput v3, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    goto :goto_22

    .line 353
    :cond_1c
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 355
    :goto_22
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v3

    .line 356
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result p0

    if-ne p0, v2, :cond_3a

    const-wide/32 v1, 0xffff

    and-long/2addr v1, v3

    const/16 p0, 0x10

    ushr-long/2addr v3, p0

    const/16 p0, 0x20

    shl-long/2addr v3, p0

    or-long/2addr v1, v3

    .line 357
    iput-wide v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    return-object v0

    .line 359
    :cond_3a
    iput-wide v3, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    return-object v0
.end method

.method public static identifierTypeToProgramType(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_26

    if-eq p0, v1, :cond_26

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_26

    const/16 v0, 0x2714

    if-eq p0, v0, :cond_26

    packed-switch p0, :pswitch_data_28

    packed-switch p0, :pswitch_data_38

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1d

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_1d

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0

    :pswitch_1f
    return v1

    :pswitch_20
    const/4 p0, 0x7

    return p0

    :pswitch_22
    const/4 p0, 0x6

    return p0

    :pswitch_24
    const/4 p0, 0x5

    return p0

    :cond_26
    return v1

    nop

    :pswitch_data_28
    .packed-switch 0x5
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_22
        :pswitch_22
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0xc
        :pswitch_20
        :pswitch_20
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method

.method public static identifierTypesToProgramTypes([I)[I
    .registers 6

    .line 230
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 232
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_33

    .line 233
    aget v3, p0, v2

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypeToProgramType(I)I

    move-result v3

    if-nez v3, :cond_13

    goto :goto_30

    .line 237
    :cond_13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    const/4 v4, 0x1

    .line 240
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    const/4 v4, 0x4

    if-ne v3, v4, :cond_30

    const/4 v3, 0x3

    .line 244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 248
    :cond_33
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 250
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 251
    aput v2, p0, v1

    move v1, v3

    goto :goto_3d

    :cond_53
    return-object p0
.end method

.method public static isAtLeastU(I)Z
    .registers 3

    const-wide/32 v0, 0xf9a4b7c

    .line 95
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public static isAtLeastV(I)Z
    .registers 3

    const-wide/32 v0, 0x120927cf

    .line 100
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Landroid/hardware/broadcastradio/ProgramSelector;)Z
    .registers 5

    .line 422
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-nez v1, :cond_15

    iget-wide v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length p0, p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z
    .registers 3

    .line 387
    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget p0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v1, 0x2

    if-eq p0, v1, :cond_21

    const/4 v1, 0x3

    if-eq p0, v1, :cond_21

    const/4 v1, 0x5

    if-eq p0, v1, :cond_21

    const/16 v1, 0x9

    if-eq p0, v1, :cond_21

    const/16 v1, 0xc

    if-eq p0, v1, :cond_21

    .line 393
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isVendorIdentifierType(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method public static isValidLogicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z
    .registers 3

    .line 638
    iget p0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1f

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1f

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1f

    const/16 v1, 0xc

    if-eq p0, v1, :cond_1f

    .line 643
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isVendorIdentifierType(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    return v0
.end method

.method public static isValidPhysicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z
    .registers 3

    .line 647
    iget p0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1a

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1a

    const/16 v1, 0xd

    if-eq p0, v1, :cond_1a

    .line 651
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isVendorIdentifierType(I)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    return p0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static isVendorIdentifierType(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static polygonFromHalPolygon(Landroid/hardware/broadcastradio/Polygon;)Landroid/hardware/radio/RadioAlert$Polygon;
    .registers 10

    .line 559
    iget-object v0, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "BcRadioAidlSrv.convert"

    if-ge v1, v2, :cond_f

    .line 560
    const-string p0, "Number of coordinates in alert polygon cannot be less than 4"

    invoke-static {v4, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_f
    const/4 v1, 0x0

    .line 562
    aget-object v2, v0, v1

    iget-wide v5, v2, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    iget-wide v7, v7, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    cmpl-double v5, v5, v7

    if-nez v5, :cond_53

    iget-wide v5, v2, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    iget-wide v7, v0, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    cmpl-double v0, v5, v7

    if-eqz v0, :cond_2d

    goto :goto_53

    .line 569
    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 570
    :goto_35
    iget-object v2, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v2, v2

    if-ge v1, v2, :cond_4d

    .line 571
    new-instance v2, Landroid/hardware/radio/RadioAlert$Coordinate;

    iget-object v3, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    aget-object v3, v3, v1

    iget-wide v4, v3, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    iget-wide v6, v3, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/hardware/radio/RadioAlert$Coordinate;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 574
    :cond_4d
    new-instance p0, Landroid/hardware/radio/RadioAlert$Polygon;

    invoke-direct {p0, v0}, Landroid/hardware/radio/RadioAlert$Polygon;-><init>(Ljava/util/List;)V

    return-object p0

    .line 566
    :cond_53
    :goto_53
    const-string p0, "The first and the last coordinate in alert polygon cannot be different"

    invoke-static {v4, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 11

    .line 656
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 659
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 660
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 661
    :goto_14
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v2, v1

    if-ge v0, v2, :cond_27

    .line 662
    aget-object v1, v1, v0

    .line 663
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 665
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 681
    :cond_27
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 682
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/hardware/radio/ProgramSelector;

    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 683
    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 684
    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    iget v5, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    iget v6, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    iget-object v7, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    .line 688
    invoke-static {v7}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->radioMetadataFromHalMetadata([Landroid/hardware/broadcastradio/Metadata;)Landroid/hardware/radio/RadioMetadata;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 689
    invoke-static {v8}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object v8

    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->emergencyAlert:Landroid/hardware/broadcastradio/Alert;

    .line 690
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->radioAlertFromHalAlert(Landroid/hardware/broadcastradio/Alert;)Landroid/hardware/radio/RadioAlert;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;Landroid/hardware/radio/RadioAlert;)V

    return-object v0
.end method

.method public static programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z
    .registers 4

    .line 762
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 765
    :cond_c
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 766
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 767
    :cond_1c
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 768
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_2c
    return v1

    .line 771
    :cond_2d
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getRelatedContent()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 772
    :cond_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 773
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    if-nez v0, :cond_35

    return v1

    :cond_48
    const/4 p0, 0x1

    return p0
.end method

.method public static programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;
    .registers 8

    .line 429
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isEmpty(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5c

    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5c

    .line 433
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 434
    :goto_15
    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v5, v4

    if-ge v3, v5, :cond_3a

    .line 435
    aget-object v4, v4, v3

    if-eqz v4, :cond_37

    .line 436
    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    if-nez v4, :cond_34

    .line 439
    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    aget-object v4, v4, v3

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "BcRadioAidlSrv.convert"

    const-string v6, "invalid secondary id: %s"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_37

    .line 442
    :cond_34
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 446
    :cond_3a
    new-instance v3, Landroid/hardware/radio/ProgramSelector;

    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v4, v4, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 447
    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypeToProgramType(I)I

    move-result v4

    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 448
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/hardware/radio/ProgramSelector$Identifier;

    new-array v2, v2, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 449
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-direct {v3, v4, p0, v0, v1}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v3

    :cond_5c
    :goto_5c
    return-object v1
.end method

.method public static programSelectorMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector;I)Z
    .registers 5

    .line 749
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 752
    :cond_c
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    move v0, v1

    .line 753
    :goto_11
    array-length v2, p0

    if-ge v0, v2, :cond_20

    .line 754
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public static programSelectorToHalProgramSelector(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/ProgramSelector;
    .registers 7

    .line 399
    new-instance v0, Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramSelector;-><init>()V

    .line 402
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 403
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    .line 404
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 405
    :goto_1a
    array-length v3, p0

    if-ge v2, v3, :cond_3b

    .line 406
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v3

    .line 407
    iget v4, v3, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-eqz v4, :cond_2b

    .line 408
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 410
    :cond_2b
    aget-object v3, p0, v2

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "BcRadioAidlSrv.convert"

    const-string v5, "Invalid secondary id: %s"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 413
    :cond_3b
    new-instance p0, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    iput-object p0, v0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 414
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result p0

    if-nez p0, :cond_50

    const/4 p0, 0x0

    return-object p0

    :cond_50
    return-object v0
.end method

.method public static propertiesFromHalProperties(ILjava/lang/String;Landroid/hardware/broadcastradio/Properties;Landroid/hardware/broadcastradio/AmFmRegionConfig;[Landroid/hardware/broadcastradio/DabTableEntry;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .registers 25

    move-object/from16 v0, p2

    .line 313
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v1, v0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypesToProgramTypes([I)[I

    move-result-object v16

    .line 318
    new-instance v2, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iget-object v6, v0, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

    iget-object v7, v0, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

    iget-object v9, v0, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

    .line 337
    invoke-static/range {p3 .. p3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->amfmConfigToBands(Landroid/hardware/broadcastradio/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v14

    iget-object v1, v0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    .line 341
    invoke-static/range {p4 .. p4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->dabConfigFromHalDabTableEntries([Landroid/hardware/broadcastradio/DabTableEntry;)Ljava/util/Map;

    move-result-object v18

    iget-object v0, v0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 342
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object v19

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    move/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v17, v1

    invoke-direct/range {v2 .. v19}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V

    return-object v2
.end method

.method public static radioAlertFromHalAlert(Landroid/hardware/broadcastradio/Alert;)Landroid/hardware/radio/RadioAlert;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 626
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/broadcastradio/Alert;->infoArray:[Landroid/hardware/broadcastradio/AlertInfo;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 627
    :goto_d
    iget-object v2, p0, Landroid/hardware/broadcastradio/Alert;->infoArray:[Landroid/hardware/broadcastradio/AlertInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 628
    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->alertInfoFromHalAlertInfo(Landroid/hardware/broadcastradio/AlertInfo;)Landroid/hardware/radio/RadioAlert$AlertInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 634
    :cond_1e
    new-instance v1, Landroid/hardware/radio/RadioAlert;

    iget v2, p0, Landroid/hardware/broadcastradio/Alert;->status:I

    iget p0, p0, Landroid/hardware/broadcastradio/Alert;->messageType:I

    invoke-direct {v1, v2, p0, v0}, Landroid/hardware/radio/RadioAlert;-><init>(IILjava/util/List;)V

    return-object v1
.end method

.method public static radioMetadataFromHalMetadata([Landroid/hardware/broadcastradio/Metadata;)Landroid/hardware/radio/RadioMetadata;
    .registers 6

    .line 455
    new-instance v0, Landroid/hardware/radio/RadioMetadata$Builder;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>()V

    const/4 v1, 0x0

    .line 457
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_152

    .line 458
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    move-result v2

    packed-switch v2, :pswitch_data_158

    .line 549
    aget-object v2, p0, v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "BcRadioAidlSrv.convert"

    const-string v4, "Ignored unknown metadata entry: %s"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14e

    .line 545
    :pswitch_21
    aget-object v2, p0, v1

    .line 546
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getHdSubChannelsAvailable()I

    move-result v2

    .line 545
    const-string v3, "android.hardware.radio.metadata.HD_SUBCHANNELS_AVAILABLE"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 541
    :pswitch_2e
    aget-object v2, p0, v1

    .line 542
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameLong()Ljava/lang/String;

    move-result-object v2

    .line 541
    const-string v3, "android.hardware.radio.metadata.HD_STATION_NAME_LONG"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 537
    :pswitch_3b
    aget-object v2, p0, v1

    .line 538
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameShort()Ljava/lang/String;

    move-result-object v2

    .line 537
    const-string v3, "android.hardware.radio.metadata.HD_STATION_NAME_SHORT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 533
    :pswitch_48
    aget-object v2, p0, v1

    .line 534
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getUfids()[Ljava/lang/String;

    move-result-object v2

    .line 533
    const-string v3, "android.hardware.radio.metadata.UFIDS"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 529
    :pswitch_55
    aget-object v2, p0, v1

    .line 530
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getCommercial()Ljava/lang/String;

    move-result-object v2

    .line 529
    const-string v3, "android.hardware.radio.metadata.COMMERCIAL"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 525
    :pswitch_62
    aget-object v2, p0, v1

    .line 526
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getCommentActualText()Ljava/lang/String;

    move-result-object v2

    .line 525
    const-string v3, "android.hardware.radio.metadata.COMMENT_ACTUAL_TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 520
    :pswitch_6f
    aget-object v2, p0, v1

    .line 522
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getCommentShortDescription()Ljava/lang/String;

    move-result-object v2

    .line 520
    const-string v3, "android.hardware.radio.metadata.COMMENT_SHORT_DESCRIPTION"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 516
    :pswitch_7c
    aget-object v2, p0, v1

    .line 517
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getGenre()Ljava/lang/String;

    move-result-object v2

    .line 516
    const-string v3, "android.hardware.radio.metadata.GENRE"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 512
    :pswitch_89
    aget-object v2, p0, v1

    .line 513
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentNameShort()Ljava/lang/String;

    move-result-object v2

    .line 512
    const-string v3, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 508
    :pswitch_96
    aget-object v2, p0, v1

    .line 509
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentName()Ljava/lang/String;

    move-result-object v2

    .line 508
    const-string v3, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 504
    :pswitch_a3
    aget-object v2, p0, v1

    .line 505
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceNameShort()Ljava/lang/String;

    move-result-object v2

    .line 504
    const-string v3, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 500
    :pswitch_b0
    aget-object v2, p0, v1

    .line 501
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceName()Ljava/lang/String;

    move-result-object v2

    .line 500
    const-string v3, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 496
    :pswitch_bd
    aget-object v2, p0, v1

    .line 497
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleNameShort()Ljava/lang/String;

    move-result-object v2

    .line 496
    const-string v3, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 492
    :pswitch_ca
    aget-object v2, p0, v1

    .line 493
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleName()Ljava/lang/String;

    move-result-object v2

    .line 492
    const-string v3, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_14e

    .line 488
    :pswitch_d7
    aget-object v2, p0, v1

    .line 489
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getProgramName()Ljava/lang/String;

    move-result-object v2

    .line 488
    const-string v3, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_14e

    .line 485
    :pswitch_e3
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getAlbumArt()I

    move-result v2

    const-string v3, "android.hardware.radio.metadata.ART"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_14e

    .line 482
    :pswitch_ef
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getStationIcon()I

    move-result v2

    const-string v3, "android.hardware.radio.metadata.ICON"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_14e

    .line 479
    :pswitch_fb
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getSongAlbum()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.ALBUM"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_14e

    .line 476
    :pswitch_107
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getSongArtist()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.ARTIST"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_14e

    .line 473
    :pswitch_113
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getSongTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_14e

    .line 470
    :pswitch_11f
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getRdsRt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.RDS_RT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_14e

    .line 467
    :pswitch_12b
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getRbdsPty()I

    move-result v2

    const-string v3, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_14e

    .line 464
    :pswitch_137
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getRdsPty()I

    move-result v2

    const-string v3, "android.hardware.radio.metadata.RDS_PTY"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_14e

    .line 461
    :pswitch_143
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getRdsPs()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.RDS_PS"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    :goto_14e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 554
    :cond_152
    invoke-virtual {v0}, Landroid/hardware/radio/RadioMetadata$Builder;->build()Landroid/hardware/radio/RadioMetadata;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_143
        :pswitch_137
        :pswitch_12b
        :pswitch_11f
        :pswitch_113
        :pswitch_107
        :pswitch_fb
        :pswitch_ef
        :pswitch_e3
        :pswitch_d7
        :pswitch_ca
        :pswitch_bd
        :pswitch_b0
        :pswitch_a3
        :pswitch_96
        :pswitch_89
        :pswitch_7c
        :pswitch_6f
        :pswitch_62
        :pswitch_55
        :pswitch_48
        :pswitch_3b
        :pswitch_2e
        :pswitch_21
    .end packed-switch
.end method

.method public static throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 5

    .line 104
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-nez v0, :cond_20

    .line 105
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unknown error"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 108
    :cond_20
    check-cast p0, Landroid/os/ServiceSpecificException;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch p0, :pswitch_data_fc

    .line 127
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unknown error ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 111
    :pswitch_4b
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": UNKNOWN_ERROR"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 125
    :pswitch_67
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": CANCELED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 123
    :pswitch_7e
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": TIMEOUT"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 121
    :pswitch_9a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": NOT_SUPPORTED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 119
    :pswitch_b1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": INVALID_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 117
    :pswitch_c8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": INVALID_ARGUMENTS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 114
    :pswitch_df
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": INTERNAL_ERROR"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_df
        :pswitch_c8
        :pswitch_b1
        :pswitch_9a
        :pswitch_7e
        :pswitch_67
        :pswitch_4b
    .end packed-switch
.end method

.method public static tunedProgramInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 2

    .line 696
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidLogicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 697
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidPhysicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_16

    .line 700
    :cond_11
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;
    .registers 7

    if-nez p0, :cond_5

    .line 178
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 181
    :cond_5
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 182
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2d

    aget-object v3, p0, v2

    .line 183
    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v4, :cond_1d

    iget-object v5, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v5, :cond_19

    goto :goto_1d

    .line 188
    :cond_19
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 184
    :cond_1d
    :goto_1d
    iget-object v3, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "BcRadioAidlSrv.convert"

    const-string v5, "VendorKeyValue contains invalid entry: key = %s, value = %s"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2d
    return-object v0
.end method

.method public static vendorInfoToHalVendorKeyValues(Ljava/util/Map;)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .registers 5

    if-nez p0, :cond_6

    const/4 p0, 0x0

    .line 157
    new-array p0, p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object p0

    .line 160
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    new-instance v2, Landroid/hardware/broadcastradio/VendorKeyValue;

    invoke-direct {v2}, Landroid/hardware/broadcastradio/VendorKeyValue;-><init>()V

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    .line 165
    iget-object v3, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v3, :cond_3f

    if-nez v1, :cond_3b

    goto :goto_3f

    .line 170
    :cond_3b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 166
    :cond_3f
    :goto_3f
    const-string v2, "VendorKeyValue contains invalid entry: key = %s, value = %s"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "BcRadioAidlSrv.convert"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    .line 173
    :cond_4b
    new-instance p0, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object p0
.end method
