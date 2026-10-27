.class public Lcom/android/internal/lineage/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static blacklist COEFFICIENTS:[F

.field private static blacklist SOLID_COLORS:[I

.field private static final blacklist sColorTable:[D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 38
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_42

    sput-object v1, Lcom/android/internal/lineage/util/ColorUtils;->SOLID_COLORS:[I

    .line 43
    new-array v1, v0, [F

    sput-object v1, Lcom/android/internal/lineage/util/ColorUtils;->COEFFICIENTS:[F

    .line 46
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 49
    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_37

    array-length v3, v1

    if-ge v2, v3, :cond_37

    .line 50
    sget-object v3, Lcom/android/internal/lineage/util/ColorUtils;->COEFFICIENTS:[F

    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v3, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 351
    :cond_37
    const/16 v0, 0x240

    new-array v0, v0, [D

    fill-array-data v0, :array_58

    sput-object v0, Lcom/android/internal/lineage/util/ColorUtils;->sColorTable:[D

    return-void

    nop

    :array_42
    .array-data 4
        -0x10000
        -0x5b00
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x1
        -0x1000000
    .end array-data

    :array_58
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fc742d5e87f5ad4L    # 0.18172716
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fd052857e2eaf15L    # 0.25503671
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fd3cd8db22fbd88L    # 0.30942099
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fd6a0f3f6317518L    # 0.35357379
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fd904c15ad3b620L    # 0.39091524
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fdb162b907c8f73L    # 0.42322816
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fdce6fed22d89d1L    # 0.45159884
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fde8338da112dfbL    # 0.47675916
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fdff381b7a59e35L    # 0.49923747
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fe09f347e0bf480L    # 0.51943421
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fe1652d7685c34eL    # 0.54360078
        0x3fb6387dcadc06d2L    # 0.08679949
        0x3ff0000000000000L    # 1.0
        0x3fe21e34f453797aL    # 0.56618736
        0x3fc200fcbfaeac25L    # 0.14065513
        0x3ff0000000000000L    # 1.0
        0x3fe2cb91b9506e2dL    # 0.58734976
        0x3fc78111f8d0e1afL    # 0.18362641
        0x3ff0000000000000L    # 1.0
        0x3fe36e8ceb6060beL    # 0.60724493
        0x3fcc562c318c3f13L    # 0.22137978
        0x3ff0000000000000L    # 1.0
        0x3fe408365a5a139dL    # 0.62600248
        0x3fd060fc2eba27afL    # 0.2559195
        0x3ff0000000000000L    # 1.0
        0x3fe49971f15efd66L    # 0.64373109
        0x3fd271d0f2f72df4L    # 0.28819679
        0x3ff0000000000000L    # 1.0
        0x3fe5230187699647L    # 0.66052319
        0x3fd46636b5f4991aL    # 0.31873863
        0x3ff0000000000000L    # 1.0
        0x3fe5a58bb58054faL    # 0.67645822
        0x3fd6437661dc1311L    # 0.34786758
        0x3ff0000000000000L    # 1.0
        0x3fe621a12fbb03a2L    # 0.69160518
        0x3fd80d0a29a4941fL    # 0.37579588
        0x3ff0000000000000L    # 1.0
        0x3fe697c0abd733d9L    # 0.70602449
        0x3fd9c55dc2a8dc83L    # 0.40267128
        0x3ff0000000000000L    # 1.0
        0x3fe7085a11437449L    # 0.71976951
        0x3fdb6e3511da9df1L    # 0.42860152
        0x3ff0000000000000L    # 1.0
        0x3fe773d0b2349b12L    # 0.7328876
        0x3fdd08e719d51342L    # 0.45366838
        0x3ff0000000000000L    # 1.0
        0x3fe7da7d6484b9e4L    # 0.74542112
        0x3fde9681364b6b8eL    # 0.47793608
        0x3ff0000000000000L    # 1.0
        0x3fe83caffee0c629L    # 0.75740814
        0x3fe00beec0e86809L    # 0.50145662
        0x3ff0000000000000L    # 1.0
        0x3fe89ab095899494L    # 0.76888303
        0x3fe0c6d8a1c23214L    # 0.52427322
        0x3ff0000000000000L    # 1.0
        0x3fe8f4c096de7e50L    # 0.77987699
        0x3fe17c4b6a8c90c8L    # 0.54642268
        0x3ff0000000000000L    # 1.0
        0x3fe94b1b97602e69L    # 0.79041843
        0x3fe22c8a0c32e936L    # 0.56793692
        0x3ff0000000000000L    # 1.0
        0x3fe99df80d984404L    # 0.80053332
        0x3fe2d7cfba92e372L    # 0.58884417
        0x3ff0000000000000L    # 1.0
        0x3fe9ed87fde5c973L    # 0.81024551
        0x3fe37e5179c53de2L    # 0.60916971
        0x3ff0000000000000L    # 1.0
        0x3fea39f965dcfe9eL    # 0.81957693
        0x3fe4203f807382daL    # 0.62893653
        0x3ff0000000000000L    # 1.0
        0x3fea8376cd3bdd7cL    # 0.82854786
        0x3fe4bdc5fe7c7241L    # 0.6481657
        0x3ff0000000000000L    # 1.0
        0x3feaca277b99ff45L    # 0.83717703
        0x3fe5570de3986b46L    # 0.66687674
        0x3ff0000000000000L    # 1.0
        0x3feb0e3003febd35L    # 0.84548188
        0x3fe5ec3d6032c5a5L    # 0.68508786
        0x3ff0000000000000L    # 1.0
        0x3feb4fb254fc5bb1L    # 0.85347859
        0x3fe67d7850c99c16L    # 0.70281616
        0x3ff0000000000000L    # 1.0
        0x3feb8ece1eb170fcL    # 0.86118227
        0x3fe70ae089174063L    # 0.72007777
        0x3ff0000000000000L    # 1.0
        0x3febcba0fdbc02fbL    # 0.86860704
        0x3fe79496147ee812L    # 0.73688797
        0x3ff0000000000000L    # 1.0
        0x3fec0646a62ca4faL    # 0.87576611
        0x3fe81ab77bd7bcc0L    # 0.75326132
        0x3ff0000000000000L    # 1.0
        0x3fec3ed913d7f926L    # 0.88267187
        0x3fe89d61d588074bL    # 0.76921169
        0x3ff0000000000000L    # 1.0
        0x3fec7570afeb6a9dL    # 0.88933596
        0x3fe91cb0fb35150bL    # 0.78475236
        0x3ff0000000000000L    # 1.0
        0x3fecaa24712383beL    # 0.89576933
        0x3fe998bf9f3cc6b0L    # 0.79989606
        0x3ff0000000000000L    # 1.0
        0x3fecdd09fc02447eL    # 0.9019823
        0x3fea11a7678d82e0L    # 0.81465502
        0x3ff0000000000000L    # 1.0
        0x3fed1bb1d21f9cfeL    # 0.90963069
        0x3fea821b2d82f00aL    # 0.8283821
        0x3ff0000000000000L    # 1.0
        0x3fed58f4be2d77b2L    # 0.91710889
        0x3feaf0eae9985f88L    # 0.84190889
        0x3ff0000000000000L    # 1.0
        0x3fed94d5f0370a2dL    # 0.92441842
        0x3feb5e1adda6e4b1L    # 0.85523742
        0x3ff0000000000000L    # 1.0
        0x3fedcf59949bd8e4L    # 0.93156127
        0x3febc9add916b21eL    # 0.86836903
        0x3ff0000000000000L    # 1.0
        0x3fee0884be96284bL    # 0.93853986
        0x3fec33a5a99d47cfL    # 0.88130458
        0x3ff0000000000000L    # 1.0
        0x3fee405d37e97b59L    # 0.94535695
        0x3fec9c03a175302eL    # 0.8940447
        0x3ff0000000000000L    # 1.0
        0x3fee76e9660aa0eeL    # 0.95201559
        0x3fed02c8acd78ef3L    # 0.90658983
        0x3ff0000000000000L    # 1.0
        0x3feeac3029e95d7cL    # 0.95851906
        0x3fed67f5b7fd87d6L    # 0.91894041
        0x3ff0000000000000L    # 1.0
        0x3feee038b4fd4d48L    # 0.96487079
        0x3fedcb8bb9dd0600L    # 0.9310969
        0x3ff0000000000000L    # 1.0
        0x3fef130a99610f8fL    # 0.97107439
        0x3fee2d8bd9bd7618L    # 0.94305985
        0x3ff0000000000000L    # 1.0
        0x3fef44ad7ea8d272L    # 0.97713351
        0x3fee8df77f52f16aL    # 0.95482993
        0x3ff0000000000000L    # 1.0
        0x3fef75293cba458cL    # 0.98305189
        0x3feeecd05d7b055aL    # 0.96640795
        0x3ff0000000000000L    # 1.0
        0x3fefa485a61cb4c2L    # 0.98883326
        0x3fef4a18723cb365L    # 0.97779486
        0x3ff0000000000000L    # 1.0
        0x3fefd2caa2d0fadaL    # 0.99448139
        0x3fefa5d21c420000L    # 0.98899179
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fefa9cff29c1448L    # 0.98947904
        0x3fefcaa5bb3aff05L    # 0.99348723
        0x3ff0000000000000L    # 1.0
        0x3fef57481064fd05L    # 0.97940448
        0x3fef975d645f252aL    # 0.98722715
        0x3ff0000000000000L    # 1.0
        0x3fef0831ad2135dbL    # 0.96975025
        0x3fef660ae6b8dc2aL    # 0.98120637
        0x3ff0000000000000L    # 1.0
        0x3feebc5a337d3001L    # 0.96049223
        0x3fef369410c39ca2L    # 0.9754124
        0x3ff0000000000000L    # 1.0
        0x3fee7392b9ab87d9L    # 0.95160805
        0x3fef08e05e7a08dbL    # 0.96983355
        0x3ff0000000000000L    # 1.0
        0x3fee2d5aa161392bL    # 0.94303638
        0x3feedca34970b74dL    # 0.96443333
        0x3ff0000000000000L    # 1.0
        0x3fede9eb25d34e46L    # 0.93480451
        0x3feeb204ca6a1bfeL    # 0.9592308
        0x3ff0000000000000L    # 1.0
        0x3feda916644579ddL    # 0.92689056
        0x3fee88ebac35fe6aL    # 0.95421394
        0x3ff0000000000000L    # 1.0
        0x3fed6ab78943b60dL    # 0.91927697
        0x3fee61441d664254L    # 0.9493733
        0x3ff0000000000000L    # 1.0
        0x3fed2eac75ea3cf5L    # 0.91194747
        0x3fee3afb9968f232L    # 0.94470005
        0x3ff0000000000000L    # 1.0
        0x3fecf4d55f4285b7L    # 0.9048869
        0x3fee1600d30eb047L    # 0.94018594
        0x3ff0000000000000L    # 1.0
        0x3fecbd14ae0cee25L    # 0.89808115
        0x3fedf2438ef5fc9cL    # 0.93582323
        0x3ff0000000000000L    # 1.0
        0x3fec874ede8a6472L    # 0.8915171
        0x3fedcfb4a38b34fdL    # 0.93160469
        0x3ff0000000000000L    # 1.0
        0x3fec536a2ff48f5fL    # 0.88518247
        0x3fedae45d8d23ea7L    # 0.92752354
        0x3ff0000000000000L    # 1.0
        0x3fec214e9f1f6a7eL    # 0.87906581
        0x3fed8de9cd8e93acL    # 0.9235734
        0x3ff0000000000000L    # 1.0
        0x3febf0e5b0c96108L    # 0.8731564
        0x3fed6e93ec867b85L    # 0.91974827
        0x3ff0000000000000L    # 1.0
        0x3febc21a5c21beedL    # 0.86744421
        0x3fed503871e16ec5L    # 0.91604254
        0x3ff0000000000000L    # 1.0
        0x3feb94d8e533f6d3L    # 0.86191983
        0x3fed32cc3019ce32L    # 0.91245088
        0x3ff0000000000000L    # 1.0
        0x3feb690ecccc76e7L    # 0.85657444
        0x3fed1644b5919ccbL    # 0.90896831
        0x3ff0000000000000L    # 1.0
        0x3feb3eaab5a0b643L    # 0.85139976
        0x3fecfa981c40fe4dL    # 0.90559011
        0x3ff0000000000000L    # 1.0
        0x3feb159c4418de9eL    # 0.84638799
        0x3fecdfbd0f149aedL    # 0.90231183
        0x3ff0000000000000L    # 1.0
        0x3feaedd418f1688eL    # 0.8415318
        0x3fecc5aab9d2742cL    # 0.89912926
        0x3ff0000000000000L    # 1.0
        0x3feac743c11ff060L    # 0.8368243
        0x3fecac58c919e4d9L    # 0.89603843
        0x3ff0000000000000L    # 1.0
        0x3feaa1dd903e7c12L    # 0.83225897
        0x3fec93bf5a4875e6L    # 0.89303558
        0x3ff0000000000000L    # 1.0
        0x3fea7d94b0a6a672L    # 0.82782969
        0x3fec7bd6f0bd16f7L    # 0.89011714
        0x3ff0000000000000L    # 1.0
        0x3fea5a5cf87e8165L    # 0.82353066
        0x3fec64987b36821dL    # 0.88727974
        0x3ff0000000000000L    # 1.0
        0x3fea382aef16f997L    # 0.81935641
        0x3fec4dfd3e59acf0L    # 0.88452017
        0x3ff0000000000000L    # 1.0
        0x3fea16f3b213e3e3L    # 0.81530175
        0x3fec37fee4ccf3b9L    # 0.88183541
        0x3ff0000000000000L    # 1.0
        0x3fe9f6ad0587287eL    # 0.8113618
        0x3fec22975f01c324L    # 0.87922257
        0x3ff0000000000000L    # 1.0
        0x3fe9d74d28fda532L    # 0.80753191
        0x3fec0dc0edf15fa9L    # 0.87667891
        0x3ff0000000000000L    # 1.0
        0x3fe9b8cae79a5886L    # 0.80380769
        0x3febf97618601e23L    # 0.87420182
        0x3ff0000000000000L    # 1.0
        0x3fe99b1d829cd2dfL    # 0.80018497
        0x3febe5b1aadd63c9L    # 0.87178882
        0x3ff0000000000000L    # 1.0
        0x3fe97e3cb161367cL    # 0.7966598
        0x3febd26eb7c3a633L    # 0.86943756
        0x3ff0000000000000L    # 1.0
        0x3fe9622096a37007L    # 0.79322843
        0x3febbfa8871d402dL    # 0.86714579
        0x3ff0000000000000L    # 1.0
        0x3fe946c1b0640b6dL    # 0.78988728
        0x3febad5a9c02d572L    # 0.86491137
        0x3ff0000000000000L    # 1.0
        0x3fe92c18e2a4fb4dL    # 0.78663296
        0x3feb9b80a9de8b3bL    # 0.86273225
        0x3ff0000000000000L    # 1.0
        0x3fe9121f6cacd185L    # 0.78346225
        0x3feb8a16a4873366L    # 0.8606065
        0x3ff0000000000000L    # 1.0
        0x3fe8f8ced8eb940dL    # 0.78037207
        0x3feb79189aab926aL    # 0.85853224
        0x3ff0000000000000L    # 1.0
        0x3fe8e02107b78466L    # 0.7773595
        0x3feb6882db67196aL    # 0.85650771
        0x3ff0000000000000L    # 1.0
        0x3fe8c81024905827L    # 0.77442176
        0x3feb5851d60b8fd6L    # 0.85453121
        0x3ff0000000000000L    # 1.0
        0x3fe8b09690a5aa1eL    # 0.77155617
        0x3feb488224dddae7L    # 0.85260112
        0x3ff0000000000000L    # 1.0
        0x3fe899af086bb459L    # 0.76876022
        0x3feb391082593627L    # 0.85071588
        0x3ff0000000000000L    # 1.0
        0x3fe883546deb6af3L    # 0.76603147
        0x3feb29f9d94a5e9eL    # 0.84887402
        0x3ff0000000000000L    # 1.0
        0x3fe86d81ee57361dL    # 0.76336762
        0x3feb1b3b29f7a035L    # 0.84707411
        0x3ff0000000000000L    # 1.0
        0x3fe85832e1d49bceL    # 0.76076645
        0x3feb0cd19a3c00e2L    # 0.84531479
        0x3ff0000000000000L    # 1.0
        0x3fe84362e0f5cea4L    # 0.75822586
        0x3feafeba7028dceeL    # 0.84359476
        0x3ff0000000000000L    # 1.0
        0x3fe82f0daf401effL    # 0.75574383
        0x3feaf0f30ca7833cL    # 0.84191277
        0x3ff0000000000000L    # 1.0
        0x3fe81b2f408a5ebeL    # 0.75331843
        0x3feae378eb79354bL    # 0.84026762
        0x3ff0000000000000L    # 1.0
        0x3fe807c3ae4019ccL    # 0.7509478
        0x3fead649a3372734L    # 0.83865816
        0x3ff0000000000000L    # 1.0
        0x3fe7f4c7421e5d8eL    # 0.74863017
        0x3feac962e5527faaL    # 0.83708329
        0x3ff0000000000000L    # 1.0
        0x3fe7e2367633b8eaL    # 0.74636386
        0x3feabcc27357908bL    # 0.83554194
        0x3ff0000000000000L    # 1.0
        0x3fe7d00dd4a9e5edL    # 0.74414722
        0x3feab066346765c0L    # 0.83403311
        0x3ff0000000000000L    # 1.0
        0x3fe7be4a22b8e793L    # 0.74197871
        0x3feaa44c1a5fd2a3L    # 0.83255582
        0x3ff0000000000000L    # 1.0
        0x3fe7ace835b3ec00L    # 0.73985682
        0x3fea98722739d5baL    # 0.83110912
        0x3ff0000000000000L    # 1.0
        0x3fe79be50de13f20L    # 0.73778012
        0x3fea8cd677c66021L    # 0.82969211
        0x3ff0000000000000L    # 1.0
        0x3fe78b3dc65f1f75L    # 0.73574723
        0x3fea81773e4ff1dbL    # 0.82830393
        0x3ff0000000000000L    # 1.0
        0x3fe77aef9a8221d9L    # 0.73375683
        0x3fea7652b27f6ea0L    # 0.82694373
        0x3ff0000000000000L    # 1.0
        0x3fe76af7e076cdbdL    # 0.73180765
        0x3fea6b6726d5acc5L    # 0.82561071
        0x3ff0000000000000L    # 1.0
        0x3fe75b53fe84d5bdL    # 0.72989845
        0x3fea60b2fdeeadc8L    # 0.8243041
        0x3ff0000000000000L    # 1.0
        0x3fe74c0185e70a3bL    # 0.72802807
        0x3fea5634aa819e50L    # 0.82302316
        0x3ff0000000000000L    # 1.0
        0x3fe73cfe12950307L    # 0.72619537
        0x3fea4bea9f45ab05L    # 0.82176715
        0x3ff0000000000000L    # 1.0
        0x3fe72e4760bcae47L    # 0.72439927
        0x3fea41d36f2856e1L    # 0.82053539
        0x3ff0000000000000L    # 1.0
        0x3fe71fdb3ca72548L    # 0.72263872
        0x3fea37edb7d3ec51L    # 0.81932722
        0x3ff0000000000000L    # 1.0
        0x3fe711b782b8ac84L    # 0.7209127
        0x3fea2e3811945207L    # 0.81814197
        0x3ff0000000000000L    # 1.0
        0x3fe703da2f8bdec6L    # 0.71922025
        0x3fea24b13fa88c7cL    # 0.81697905
        0x3ff0000000000000L    # 1.0
        0x3fe6f6414a781e4aL    # 0.71756043
        0x3fea1b57efd61144L    # 0.81583783
        0x3ff0000000000000L    # 1.0
        0x3fe6e8eaf04e5c2eL    # 0.71593234
        0x3fea122af5771002L    # 0.81471775
        0x3ff0000000000000L    # 1.0
        0x3fe6dbd5489c5104L    # 0.7143351
        0x3fea092923e5b856L    # 0.81361825
        0x3ff0000000000000L    # 1.0
        0x3fe6cefe95c7a7f5L    # 0.71276788
        0x3fea005153da9d9bL    # 0.81253878
        0x3ff0000000000000L    # 1.0
        0x3fe6c26524f2d39dL    # 0.71122987
        0x3fe9f7a27387e20cL    # 0.81147883
        0x3ff0000000000000L    # 1.0
        0x3fe6b607535b71c1L    # 0.70972029
        0x3fe9ef1b711fa7e6L    # 0.81043789
        0x3ff0000000000000L    # 1.0
        0x3fe6a9e388fbe797L    # 0.70823838
        0x3fe9e6bb4032751dL    # 0.80941546
        0x3ff0000000000000L    # 1.0
        0x3fe69df84348293aL    # 0.70678342
        0x3fe9de80ef28c241L    # 0.80841109
        0x3ff0000000000000L    # 1.0
        0x3fe69243ffb42abfL    # 0.70535469
        0x3fe9d66b870ca428L    # 0.80742432
        0x3ff0000000000000L    # 1.0
        0x3fe686c55bea3695L    # 0.70395153
        0x3fe9ce7a10e82faaL    # 0.80645469
        0x3ff0000000000000L    # 1.0
        0x3fe67b7af036336eL    # 0.70257327
        0x3fe9c6abb5fbcff0L    # 0.8055018
        0x3ff0000000000000L    # 1.0
        0x3fe670636a5d96dfL    # 0.70121928
        0x3fe9beff8f6cc4faL    # 0.80456522
        0x3ff0000000000000L    # 1.0
        0x3fe6657d7d843a37L    # 0.69988894
        0x3fe9b774c67b79f4L    # 0.80364455
        0x3ff0000000000000L    # 1.0
        0x3fe65ac7f24785a6L    # 0.69858167
        0x3fe9b00a8f252178L    # 0.80273941
        0x3ff0000000000000L    # 1.0
        0x3fe650418be67da3L    # 0.69729688
        0x3fe9a8c022c551d9L    # 0.80184943
        0x3ff0000000000000L    # 1.0
        0x3fe645e92319b589L    # 0.69603402
        0x3fe9a194b5593db4L    # 0.80097423
        0x3ff0000000000000L    # 1.0
        0x3fe63bbd95f82469L    # 0.69479255
        0x3fe99a879057a685L    # 0.80011347
        0x3ff0000000000000L    # 1.0
        0x3fe631bdd2b3ec81L    # 0.69357196
        0x3fe99397fd374dcaL    # 0.79926681
        0x3ff0000000000000L    # 1.0
        0x3fe627e8c220cc53L    # 0.69237173
        0x3fe98cc5456ef500L    # 0.79843391
        0x3ff0000000000000L    # 1.0
        0x3fe61e3d628c1146L    # 0.69119138
        0x3fe9860ec29088cfL    # 0.79761446
        0x3ff0000000000000L    # 1.0
        0x3fe614bab7a16c77L    # 0.69003044
        0x3fe97f73c8cf9224L    # 0.79680814
        0x3ff0000000000000L    # 1.0
        0x3fe60b5fc50c8f05L    # 0.68888844
        0x3fe978f3bc7ac518L    # 0.79601466
        0x3ff0000000000000L    # 1.0
        0x3fe6022b9e945537L    # 0.68776494
        0x3fe9728df7240e52L    # 0.79523371
        0x3ff0000000000000L    # 1.0
        0x3fe5f91d5d5dff0fL    # 0.68665951
        0x3fe96c41e7d6e95bL    # 0.79446502
        0x3ff0000000000000L    # 1.0
        0x3fe5f0341fed3045L    # 0.68557173
        0x3fe9660ef2e20a4cL    # 0.7937083
        0x3ff0000000000000L    # 1.0
        0x3fe5e76f0a23f04aL    # 0.68450119
        0x3fe95ff4920db41eL    # 0.7929633
        0x3ff0000000000000L    # 1.0
        0x3fe5decd4fff71bbL    # 0.68344751
        0x3fe959f23465625aL    # 0.79222975
        0x3ff0000000000000L    # 1.0
        0x3fe5d64e1ac01fc0L    # 0.68241029
        0x3fe9540753b157fcL    # 0.7915074
        0x3ff0000000000000L    # 1.0
        0x3fe5cdf0ae7e5820L    # 0.68138918
        0x3fe94e3369b9d7feL    # 0.790796
        0x3ff0000000000000L    # 1.0
        0x3fe5c5b43f374d74L    # 0.6803838
        0x3fe94875f5a58911L    # 0.79009531
        0x3ff0000000000000L    # 1.0
        0x3fe5bd981661c13bL    # 0.67939381
        0x3fe942ce8157d95bL    # 0.78940511
        0x3ff0000000000000L    # 1.0
        0x3fe5b59b82d2d8aaL    # 0.67841888
        0x3fe93d3c9155d346L    # 0.78872517
        0x3ff0000000000000L    # 1.0
        0x3fe5adbdc8a2f187L    # 0.67745866
        0x3fe937bfaa24813fL    # 0.78805526
        0x3ff0000000000000L    # 1.0
        0x3fe5a5fe4163f878L    # 0.67651284
        0x3fe93257606418d9L    # 0.78739518
        0x3ff0000000000000L    # 1.0
        0x3fe59e5c4c063dddL    # 0.67558112
        0x3fe92d0343566bf2L    # 0.78674472
        0x3ff0000000000000L    # 1.0
        0x3fe596d7375ee6ebL    # 0.67466317
        0x3fe927c2e79bb01fL    # 0.78610368
        0x3ff0000000000000L    # 1.0
        0x3fe58f6e72796f2dL    # 0.67375872
        0x3fe92295e1d41af5L    # 0.78547186
        0x3ff0000000000000L    # 1.0
        0x3fe5882161a48ab9L    # 0.67286748
        0x3fe91d7bcbfe45c1L    # 0.78484907
        0x3ff0000000000000L    # 1.0
        0x3fe580ef692eeda9L    # 0.67198916
        0x3fe918744018c9d0L    # 0.78423512
        0x3ff0000000000000L    # 1.0
        0x3fe579d7fd82773eL    # 0.6711235
        0x3fe9137ee2df07e3L    # 0.78362984
        0x3ff0000000000000L    # 1.0
        0x3fe572da930906baL    # 0.67027024
        0x3fe90e9b53adfcfeL    # 0.78303305
        0x3ff0000000000000L    # 1.0
        0x3fe56bf698ce17a6L    # 0.66942911
        0x3fe909c931e2a628L    # 0.78244457
        0x3ff0000000000000L    # 1.0
        0x3fe5652b9356b46dL    # 0.66859988
        0x3fe905082cf52b91L    # 0.78186425
        0x3ff0000000000000L    # 1.0
        0x3fe55e78f1ae5898L    # 0.66778228
        0x3fe90057e4428a3eL    # 0.78129191
        0x3ff0000000000000L    # 1.0
        0x3fe557de4316d605L    # 0.6669761
        0x3fe8fbb80742ea60L    # 0.7807274
        0x3ff0000000000000L    # 1.0
        0x3fe5515b06b6d366L    # 0.6661811
        0x3fe8f728456e7427L    # 0.78017057
        0x3ff0000000000000L    # 1.0
        0x3fe54aeec671bedfL    # 0.66539706
        0x3fe8f2a84e3d4fc2L    # 0.77962127
        0x3ff0000000000000L    # 1.0
        0x3fe544990c2b0694L    # 0.66462376
        0x3fe8ee37cbc941a8L    # 0.77907934
        0x3ff0000000000000L    # 1.0
        0x3fe53e5961c618a9L    # 0.66386098
        0x3fe8e9d67847397aL    # 0.77854465
        0x3ff0000000000000L    # 1.0
        0x3fe5382f5be32ab2L    # 0.66310852
        0x3fe8e584032f5f69L    # 0.77801705
        0x3ff0000000000000L    # 1.0
        0x3fe5321a8f227246L    # 0.66236618
        0x3fe8e1402c1506cdL    # 0.77749642
        0x3ff0000000000000L    # 1.0
        0x3fe52c1a8ac5c140L    # 0.66163375
        0x3fe8dd0aa27057d7L    # 0.77698261
        0x3ff0000000000000L    # 1.0
        0x3fe5262ef388785fL    # 0.66091106
        0x3fe8d8e32b330998L    # 0.77647551
        0x3ff0000000000000L    # 1.0
        0x3fe520575e0acd39L    # 0.66019791
        0x3fe8d4c97b33a7f8L    # 0.77597498
        0x3ff0000000000000L    # 1.0
        0x3fe51a9369a9bcd2L    # 0.65949412
        0x3fe8d0bd52058652L    # 0.7754809
        0x3ff0000000000000L    # 1.0
        0x3fe514e2bb20a7ebL    # 0.65879952
        0x3fe8ccbe6f3bf7feL    # 0.77499315
        0x3ff0000000000000L    # 1.0
        0x3fe50f44ec6e27d1L    # 0.65811392
        0x3fe8c8cc926a5056L    # 0.77451161
        0x3ff0000000000000L    # 1.0
        0x3fe509b9a7ac00faL    # 0.65743716
        0x3fe8c4e785e0aa24L    # 0.77403618
        0x3ff0000000000000L    # 1.0
        0x3fe5044096f3f7dfL    # 0.65676908
        0x3fe8c10f03d3f50aL    # 0.77356673
        0x3ff0000000000000L    # 1.0
        0x3fe4fed9645fd0f6L    # 0.65610952
        0x3fe8bd42d6944bd2L    # 0.77310316
        0x3ff0000000000000L    # 1.0
        0x3fe4f983b4aaecfeL    # 0.65545831
        0x3fe8b982c871c946L    # 0.77264537
        0x3ff0000000000000L    # 1.0
        0x3fe4f43f374d7427L    # 0.6548153
        0x3fe8b5ce98ffc0c0L    # 0.77219324
        0x3ff0000000000000L    # 1.0
        0x3fe4ef0ba67c5612L    # 0.65418036
        0x3fe8b2261d4b147bL    # 0.77174669
        0x3ff0000000000000L    # 1.0
        0x3fe4e9e8a6f2f37dL    # 0.65355332
        0x3fe8ae8914e717d2L    # 0.7713056
        0x3ff0000000000000L    # 1.0
        0x3fe4e4d5ed87d851L    # 0.65293404
        0x3fe8aaf74f824946L    # 0.77086988
        0x3ff0000000000000L    # 1.0
        0x3fe4dfd339ce57e7L    # 0.6523224
        0x3fe8a7709ccb275bL    # 0.77043944
        0x3ff0000000000000L    # 1.0
        0x3fe4dae035e036b7L    # 0.65171824
        0x3fe8a3f4cc703095L    # 0.77001419
        0x3ff0000000000000L    # 1.0
        0x3fe4d5fca150c81aL    # 0.65112144
        0x3fe8a083ae1fe375L    # 0.76959404
        0x3ff0000000000000L    # 1.0
        0x3fe4d1283654fbb0L    # 0.65053187
        0x3fe89d1d0c2a5ac7L    # 0.76917889
        0x3ff0000000000000L    # 1.0
        0x3fe4cc62b48024d3L    # 0.64994941
        0x3fe899c0bb9c78c7L    # 0.76876866
        0x3ff0000000000000L    # 1.0
        0x3fe4c7abd0a8cf6dL    # 0.64937392
        0x3fe8966e8c24bbf7L    # 0.76836326
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateDeltaE(DDDDDD)D
    .registers 47

    .line 152
    move-wide/from16 v0, p4

    move-wide/from16 v2, p10

    add-double v4, p0, p6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 153
    mul-double v8, p2, p2

    mul-double v10, v0, v0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 154
    mul-double v12, p8, p8

    mul-double v14, v2, v2

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 155
    add-double/2addr v8, v12

    div-double/2addr v8, v6

    .line 157
    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    move-wide/from16 v18, v6

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v8, v8, v20

    div-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v8, v16, v8

    div-double v8, v8, v18

    .line 158
    add-double v8, v8, v16

    move-wide/from16 v20, v6

    mul-double v6, p2, v8

    .line 159
    mul-double v8, v8, p8

    .line 161
    mul-double v22, v6, v6

    add-double v22, v22, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 162
    mul-double v22, v8, v8

    add-double v22, v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 163
    add-double v22, v10, v14

    div-double v12, v22, v18

    .line 165
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v22

    .line 166
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmpg-double v0, v0, v6

    const/4 v1, 0x1

    const/16 v24, 0x0

    if-gez v0, :cond_6c

    move v0, v1

    goto :goto_6e

    :cond_6c
    move/from16 v0, v24

    :goto_6e
    move-wide/from16 p2, v6

    int-to-double v6, v0

    const-wide v25, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v6, v6, v25

    add-double v22, v22, v6

    .line 167
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 168
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    cmpg-double v0, v2, p2

    if-gez v0, :cond_87

    goto :goto_89

    :cond_87
    move/from16 v1, v24

    :goto_89
    int-to-double v0, v1

    mul-double v0, v0, v25

    add-double/2addr v6, v0

    .line 169
    sub-double v0, v22, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    cmpl-double v2, v2, v8

    if-lez v2, :cond_a1

    .line 170
    add-double v2, v22, v6

    add-double v2, v2, v25

    goto :goto_a3

    :cond_a1
    add-double v2, v22, v6

    :goto_a3
    div-double v2, v2, v18

    .line 172
    const-wide v27, 0x3fe0c152382d7365L    # 0.5235987755982988

    sub-double v29, v2, v27

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    const-wide v31, 0x3fc5c28f5c28f5c3L    # 0.17

    mul-double v29, v29, v31

    sub-double v29, v16, v29

    mul-double v31, v2, v18

    .line 173
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    const-wide v33, 0x3fceb851eb851eb8L    # 0.24

    mul-double v31, v31, v33

    add-double v29, v29, v31

    const-wide/high16 v31, 0x4008000000000000L    # 3.0

    mul-double v31, v31, v2

    const-wide v33, 0x3fbacee9f37bebd5L    # 0.10471975511965977

    add-double v31, v31, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    const-wide v33, 0x3fd47ae147ae147bL    # 0.32

    mul-double v31, v31, v33

    add-double v29, v29, v31

    const-wide/high16 v31, 0x4010000000000000L    # 4.0

    mul-double v31, v31, v2

    const-wide v33, 0x3ff197c987c952c4L    # 1.0995574287564276

    sub-double v31, v31, v33

    .line 174
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    const-wide v33, 0x3fc999999999999aL    # 0.2

    mul-double v31, v31, v33

    sub-double v29, v29, v31

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v8

    if-gtz v0, :cond_103

    sub-double v6, v6, v22

    goto :goto_110

    .line 177
    :cond_103
    cmpg-double v0, v6, v22

    if-gtz v0, :cond_10c

    sub-double v6, v6, v22

    add-double v6, v6, v25

    goto :goto_110

    .line 178
    :cond_10c
    sub-double v6, v6, v22

    sub-double v6, v6, v25

    .line 180
    :goto_110
    sub-double v0, p6, p0

    .line 181
    sub-double v8, v14, v10

    .line 182
    mul-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v18

    div-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v10, v6

    .line 183
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    sub-double/2addr v4, v6

    const-wide v6, 0x3f8eb851eb851eb8L    # 0.015

    mul-double v14, v4, v6

    mul-double/2addr v14, v4

    const-wide/high16 v22, 0x4034000000000000L    # 20.0

    mul-double/2addr v4, v4

    add-double v4, v4, v22

    .line 184
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v14, v4

    add-double v14, v14, v16

    .line 185
    const-wide v4, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double/2addr v4, v12

    add-double v4, v4, v16

    .line 186
    mul-double/2addr v6, v12

    mul-double v6, v6, v29

    add-double v6, v6, v16

    .line 188
    const-wide v22, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v2, v2, v22

    const-wide v22, 0x4071300000000000L    # 275.0

    sub-double v2, v2, v22

    div-double v2, v2, v20

    move-wide/from16 p0, v0

    neg-double v0, v2

    mul-double/2addr v0, v2

    .line 189
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v0, v0, v27

    .line 191
    nop

    .line 192
    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    move-wide/from16 p2, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v12, v0

    div-double v22, v22, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v0, v0, v18

    .line 193
    neg-double v0, v0

    mul-double v2, p2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 195
    nop

    .line 196
    nop

    .line 197
    nop

    .line 199
    mul-double v14, v14, v16

    div-double v2, p0, v14

    mul-double/2addr v2, v2

    mul-double v4, v4, v16

    div-double/2addr v8, v4

    mul-double v4, v8, v8

    add-double/2addr v2, v4

    mul-double v6, v6, v16

    div-double/2addr v10, v6

    mul-double v4, v10, v10

    add-double/2addr v2, v4

    mul-double/2addr v0, v8

    mul-double/2addr v0, v10

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 205
    return-wide v0
.end method

.method public static blacklist convertRGBtoLAB(I)[F
    .registers 15

    .line 73
    nop

    .line 75
    nop

    .line 76
    nop

    .line 78
    nop

    .line 79
    nop

    .line 80
    nop

    .line 83
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 84
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 85
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    .line 88
    float-to-double v3, v0

    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v1, v3, v5

    const/high16 v7, 0x41400000    # 12.0f

    const-wide v8, 0x4003333333333333L    # 2.4

    const-wide v10, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    if-gtz v1, :cond_37

    .line 89
    div-float/2addr v0, v7

    goto :goto_3e

    .line 91
    :cond_37
    add-double/2addr v3, v12

    div-double/2addr v3, v10

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 93
    :goto_3e
    float-to-double v3, v2

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_45

    .line 94
    div-float/2addr v2, v7

    goto :goto_4c

    .line 96
    :cond_45
    add-double/2addr v3, v12

    div-double/2addr v3, v10

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v2, v1

    .line 98
    :goto_4c
    float-to-double v3, p0

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_53

    .line 99
    div-float/2addr p0, v7

    goto :goto_5a

    .line 101
    :cond_53
    add-double/2addr v3, v12

    div-double/2addr v3, v10

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float p0, v3

    .line 103
    :goto_5a
    const v1, 0x3edf4236

    mul-float/2addr v1, v0

    const v3, 0x3ec5296a

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    const v3, 0x3e128582

    mul-float/2addr v3, p0

    add-float/2addr v1, v3

    .line 104
    const v3, 0x3e63d4d6

    mul-float/2addr v3, v0

    const v4, 0x3f3785d8

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    const v4, 0x3d784e3c

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    .line 105
    const v4, 0x3c6436f9

    mul-float/2addr v0, v4

    const v4, 0x3dc6dacb

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    const v2, 0x3f36d4dc

    mul-float/2addr p0, v2

    add-float/2addr v0, p0

    .line 108
    const p0, 0x3f76d730    # 0.964221f

    div-float/2addr v1, p0

    .line 109
    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr v3, p0

    .line 110
    const p0, 0x3f534107

    div-float/2addr v0, p0

    .line 112
    const p0, 0x3c111aa7

    cmpl-float v2, v1, p0

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    const v10, 0x4461d2f7

    if-lez v2, :cond_a9

    .line 113
    float-to-double v1, v1

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_ae

    .line 115
    :cond_a9
    mul-float/2addr v1, v10

    float-to-double v1, v1

    add-double/2addr v1, v8

    div-double/2addr v1, v6

    double-to-float v1, v1

    .line 117
    :goto_ae
    cmpl-float v2, v3, p0

    if-lez v2, :cond_b9

    .line 118
    float-to-double v2, v3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_be

    .line 120
    :cond_b9
    mul-float/2addr v3, v10

    float-to-double v2, v3

    add-double/2addr v2, v8

    div-double/2addr v2, v6

    double-to-float v2, v2

    .line 122
    :goto_be
    cmpl-float p0, v0, p0

    if-lez p0, :cond_c9

    .line 123
    float-to-double v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float p0, v3

    goto :goto_ce

    .line 125
    :cond_c9
    mul-float/2addr v0, v10

    float-to-double v3, v0

    add-double/2addr v3, v8

    div-double/2addr v3, v6

    double-to-float p0, v3

    .line 127
    :goto_ce
    const/high16 v0, 0x42e80000    # 116.0f

    mul-float/2addr v0, v2

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v0, v3

    .line 128
    const/high16 v3, 0x43fa0000    # 500.0f

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 129
    const/high16 v3, 0x43480000    # 200.0f

    sub-float/2addr v2, p0

    mul-float/2addr v2, v3

    .line 131
    const p0, 0x40233333    # 2.55f

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    .line 132
    add-float/2addr v1, p0

    .line 133
    add-float/2addr v2, p0

    const/4 p0, 0x3

    new-array p0, p0, [F

    const/4 v3, 0x0

    aput v0, p0, v3

    const/4 v0, 0x1

    aput v1, p0, v0

    const/4 v0, 0x2

    aput v2, p0, v0

    .line 135
    return-object p0
.end method

.method public static blacklist dropAlpha(I)I
    .registers 2

    .line 62
    const v0, 0xffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static blacklist findPerceptuallyNearestColor(I[I)I
    .registers 25

    .line 218
    move-object/from16 v0, p1

    .line 219
    nop

    .line 221
    invoke-static/range {p0 .. p0}, Lcom/android/internal/lineage/util/ColorUtils;->convertRGBtoLAB(I)[F

    move-result-object v1

    .line 223
    const/4 v2, 0x0

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v5, v2

    move v6, v5

    :goto_f
    array-length v7, v0

    if-ge v5, v7, :cond_55

    .line 224
    aget v7, v0, v5

    invoke-static {v7}, Lcom/android/internal/lineage/util/ColorUtils;->convertRGBtoLAB(I)[F

    move-result-object v7

    .line 225
    aget v8, v1, v2

    float-to-double v9, v8

    const/4 v8, 0x1

    aget v11, v1, v8

    float-to-double v11, v11

    const/4 v13, 0x2

    aget v14, v1, v13

    float-to-double v14, v14

    move/from16 p0, v2

    aget v2, v7, p0

    move-wide/from16 v16, v9

    move v10, v8

    float-to-double v8, v2

    aget v2, v7, v10

    move v10, v13

    move-wide/from16 v18, v14

    float-to-double v13, v2

    aget v2, v7, v10

    move-object v7, v1

    float-to-double v0, v2

    move-wide/from16 v21, v16

    move-wide v15, v8

    move-wide/from16 v9, v21

    move-wide/from16 v21, v18

    move-wide/from16 v19, v0

    move-wide/from16 v17, v13

    move-wide/from16 v13, v21

    invoke-static/range {v9 .. v20}, Lcom/android/internal/lineage/util/ColorUtils;->calculateDeltaE(DDDDDD)D

    move-result-wide v0

    .line 227
    cmpg-double v2, v0, v3

    if-gez v2, :cond_4d

    .line 228
    aget v6, p1, v5

    .line 229
    move-wide v3, v0

    .line 223
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p0

    move-object/from16 v0, p1

    move-object v1, v7

    goto :goto_f

    .line 232
    :cond_55
    return v6
.end method

.method public static blacklist findPerceptuallyNearestSolidColor(I)I
    .registers 2

    .line 245
    sget-object v0, Lcom/android/internal/lineage/util/ColorUtils;->SOLID_COLORS:[I

    invoke-static {p0, v0}, Lcom/android/internal/lineage/util/ColorUtils;->findPerceptuallyNearestColor(I[I)I

    move-result p0

    return p0
.end method

.method public static blacklist generateAlertColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    .registers 8

    .line 277
    nop

    .line 278
    nop

    .line 280
    const/high16 v0, -0x1000000

    if-nez p0, :cond_7

    .line 281
    return v0

    .line 284
    :cond_7
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_12

    .line 285
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_3e

    .line 287
    :cond_12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 288
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 289
    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 290
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 289
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 292
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 293
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p0, v2

    .line 297
    :goto_3e
    if-eqz p0, :cond_71

    .line 298
    invoke-static {p0}, Lcom/android/internal/lineage/util/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/lineage/util/palette/Palette$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/lineage/util/palette/Palette$Builder;->generate()Lcom/android/internal/lineage/util/palette/Palette;

    move-result-object v2

    .line 299
    if-nez v2, :cond_4b

    .line 300
    return v0

    .line 304
    :cond_4b
    invoke-static {v2}, Lcom/android/internal/lineage/util/ColorUtils;->getDominantSwatch(Lcom/android/internal/lineage/util/palette/Palette;)Lcom/android/internal/lineage/util/palette/Palette$Swatch;

    move-result-object v3

    .line 305
    nop

    .line 306
    if-eqz v3, :cond_5b

    .line 307
    invoke-virtual {v3}, Lcom/android/internal/lineage/util/palette/Palette$Swatch;->getRgb()I

    move-result v3

    .line 308
    invoke-static {v3}, Lcom/android/internal/lineage/util/ColorUtils;->findPerceptuallyNearestSolidColor(I)I

    move-result v3

    goto :goto_5c

    .line 306
    :cond_5b
    move v3, v0

    .line 312
    :goto_5c
    const/4 v4, -0x1

    if-eq v3, v0, :cond_64

    if-ne v3, v4, :cond_62

    goto :goto_64

    :cond_62
    move v0, v3

    goto :goto_6c

    .line 313
    :cond_64
    :goto_64
    invoke-virtual {v2, v4}, Lcom/android/internal/lineage/util/palette/Palette;->getVibrantColor(I)I

    move-result v0

    .line 314
    invoke-static {v0}, Lcom/android/internal/lineage/util/ColorUtils;->findPerceptuallyNearestSolidColor(I)I

    move-result v0

    .line 317
    :goto_6c
    if-nez v1, :cond_71

    .line 318
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 322
    :cond_71
    return v0
.end method

.method public static blacklist getDominantSwatch(Lcom/android/internal/lineage/util/palette/Palette;)Lcom/android/internal/lineage/util/palette/Palette$Swatch;
    .registers 2

    .line 255
    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/lineage/util/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1d

    .line 259
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/lineage/util/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/internal/lineage/util/ColorUtils$1;

    invoke-direct {v0}, Lcom/android/internal/lineage/util/ColorUtils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/lineage/util/palette/Palette$Swatch;

    return-object p0

    .line 256
    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist temperatureToRGB(I)[F
    .registers 10

    .line 334
    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 336
    mul-int v2, p0, p0

    int-to-float v2, v2

    .line 337
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_25

    .line 338
    sget-object v4, Lcom/android/internal/lineage/util/ColorUtils;->COEFFICIENTS:[F

    mul-int/lit8 v5, v3, 0x3

    aget v4, v4, v5

    mul-float/2addr v4, v2

    int-to-float v6, p0

    sget-object v7, Lcom/android/internal/lineage/util/ColorUtils;->COEFFICIENTS:[F

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    sget-object v6, Lcom/android/internal/lineage/util/ColorUtils;->COEFFICIENTS:[F

    add-int/lit8 v5, v5, 0x2

    aget v5, v6, v5

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 342
    :cond_25
    return-object v1
.end method
