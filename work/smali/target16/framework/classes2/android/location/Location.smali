.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$BearingDistanceCache;,
        Landroid/location/Location$Format;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_DEGREES:I = 0x0

.field public static final whitelist FORMAT_MINUTES:I = 0x1

.field public static final whitelist FORMAT_SECONDS:I = 0x2

.field private static final blacklist HAS_ALTITUDE_ACCURACY_MASK:I = 0x20

.field private static final greylist-max-o HAS_ALTITUDE_MASK:I = 0x1

.field private static final greylist-max-o HAS_BEARING_ACCURACY_MASK:I = 0x80

.field private static final greylist-max-o HAS_BEARING_MASK:I = 0x4

.field private static final blacklist HAS_ELAPSED_REALTIME_UNCERTAINTY_MASK:I = 0x100

.field private static final greylist-max-o HAS_HORIZONTAL_ACCURACY_MASK:I = 0x8

.field private static final greylist-max-o HAS_MOCK_PROVIDER_MASK:I = 0x10

.field private static final blacklist HAS_MSL_ALTITUDE_ACCURACY_MASK:I = 0x400

.field private static final blacklist HAS_MSL_ALTITUDE_MASK:I = 0x200

.field private static final greylist-max-o HAS_SPEED_ACCURACY_MASK:I = 0x40

.field private static final greylist-max-o HAS_SPEED_MASK:I = 0x2

.field private static final greylist-max-o sBearingDistanceCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/location/Location$BearingDistanceCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAltitudeAccuracyMeters:F

.field private blacklist mAltitudeMeters:D

.field private greylist-max-o mBearingAccuracyDegrees:F

.field private blacklist mBearingDegrees:F

.field private blacklist mElapsedRealtimeNs:J

.field private blacklist mElapsedRealtimeUncertaintyNs:D

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private blacklist mFieldsMask:I

.field private greylist-max-o mHorizontalAccuracyMeters:F

.field private blacklist mLatitudeDegrees:D

.field private blacklist mLongitudeDegrees:D

.field private blacklist mMslAltitudeAccuracyMeters:F

.field private blacklist mMslAltitudeMeters:D

.field private blacklist mProvider:Ljava/lang/String;

.field private greylist-max-o mSpeedAccuracyMetersPerSecond:F

.field private blacklist mSpeedMetersPerSecond:F

.field private blacklist mTimeMs:J


# direct methods
.method public static synthetic blacklist $r8$lambda$LCoyno7iOKo6n1w2mcfX-qv702o()Landroid/location/Location$BearingDistanceCache;
    .registers 2

    new-instance v0, Landroid/location/Location$BearingDistanceCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/location/Location$BearingDistanceCache;-><init>(Landroid/location/Location-IA;)V

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltitudeAccuracyMeters(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltitudeMeters(Landroid/location/Location;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mAltitudeMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBearingAccuracyDegrees(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBearingDegrees(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mBearingDegrees:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmElapsedRealtimeNs(Landroid/location/Location;J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmElapsedRealtimeUncertaintyNs(Landroid/location/Location;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtras(Landroid/location/Location;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFieldsMask(Landroid/location/Location;I)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHorizontalAccuracyMeters(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLatitudeDegrees(Landroid/location/Location;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLongitudeDegrees(Landroid/location/Location;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMslAltitudeAccuracyMeters(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMslAltitudeMeters(Landroid/location/Location;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSpeedMetersPerSecond(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeMs(Landroid/location/Location;J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mTimeMs:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/location/Location$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/location/Location$$ExternalSyntheticLambda0;-><init>()V

    .line 114
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    .line 1011
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/Location;)V
    .registers 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 151
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 152
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 144
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private static blacklist areExtrasEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 3

    .line 939
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_8
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1d

    .line 941
    :cond_11
    if-eqz p0, :cond_1b

    if-nez p1, :cond_16

    goto :goto_1b

    .line 944
    :cond_16
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result p0

    return p0

    .line 942
    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0

    .line 940
    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist-max-o computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V
    .registers 75

    .line 1227
    move-object/from16 v0, p8

    const-wide v1, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v3, p0, v1

    .line 1228
    mul-double v5, p4, v1

    .line 1229
    mul-double v7, p2, v1

    .line 1230
    mul-double v1, v1, p6

    .line 1232
    nop

    .line 1233
    nop

    .line 1234
    nop

    .line 1235
    nop

    .line 1237
    sub-double v9, v1, v7

    .line 1238
    nop

    .line 1239
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    const-wide v13, 0x3fefe488a57a12e4L    # 0.996647189328169

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    .line 1240
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    .line 1242
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    .line 1243
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    .line 1244
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 1245
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 1246
    mul-double v19, v15, v17

    .line 1247
    mul-double v21, v11, v13

    .line 1249
    nop

    .line 1250
    nop

    .line 1255
    nop

    .line 1256
    nop

    .line 1258
    nop

    .line 1259
    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    move-wide/from16 p0, v9

    move-wide/from16 v27, v23

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move/from16 v9, v25

    move-wide/from16 v25, p0

    :goto_5a
    const/16 v10, 0x14

    if-ge v9, v10, :cond_171

    .line 1260
    nop

    .line 1261
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 1262
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    .line 1263
    mul-double v27, v17, v35

    .line 1264
    mul-double v29, v15, v13

    mul-double v33, v11, v17

    mul-double v33, v33, v31

    sub-double v29, v29, v33

    .line 1265
    mul-double v27, v27, v27

    mul-double v29, v29, v29

    add-double v27, v27, v29

    .line 1266
    move/from16 p2, v9

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 1267
    mul-double v27, v19, v31

    move-wide/from16 p3, v13

    add-double v13, v21, v27

    .line 1268
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v27

    .line 1269
    cmpl-double v29, v9, v23

    if-nez v29, :cond_8e

    move-wide/from16 v29, v23

    goto :goto_92

    .line 1270
    :cond_8e
    mul-double v29, v19, v35

    div-double v29, v29, v9

    .line 1271
    :goto_92
    mul-double v33, v29, v29

    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    sub-double v33, v37, v33

    .line 1272
    cmpl-double v39, v33, v23

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    if-nez v39, :cond_a1

    move-wide/from16 v42, v23

    goto :goto_a7

    :cond_a1
    mul-double v42, v21, v40

    div-double v42, v42, v33

    sub-double v42, v13, v42

    .line 1274
    :goto_a7
    const-wide v44, 0x3f7b9adfe2939d71L    # 0.006739496756586903

    mul-double v44, v44, v33

    .line 1275
    const-wide/high16 v46, 0x40d0000000000000L    # 16384.0

    div-double v46, v44, v46

    const-wide v48, 0x4065e00000000000L    # 175.0

    mul-double v48, v48, v44

    const-wide/high16 v50, 0x4074000000000000L    # 320.0

    sub-double v50, v50, v48

    mul-double v50, v50, v44

    const-wide/high16 v48, -0x3f78000000000000L    # -768.0

    add-double v50, v50, v48

    mul-double v50, v50, v44

    const-wide/high16 v48, 0x40b0000000000000L    # 4096.0

    add-double v50, v50, v48

    mul-double v46, v46, v50

    add-double v46, v46, v37

    .line 1277
    const-wide/high16 v48, 0x4090000000000000L    # 1024.0

    div-double v48, v44, v48

    const-wide v50, 0x4047800000000000L    # 47.0

    mul-double v50, v50, v44

    const-wide v52, 0x4052800000000000L    # 74.0

    sub-double v52, v52, v50

    mul-double v52, v52, v44

    const-wide/high16 v50, -0x3fa0000000000000L    # -128.0

    add-double v52, v52, v50

    mul-double v44, v44, v52

    const-wide/high16 v50, 0x4070000000000000L    # 256.0

    add-double v44, v44, v50

    mul-double v48, v48, v44

    .line 1279
    const-wide v44, 0x3f2b775a85ed1bbcL    # 2.0955066698943685E-4

    mul-double v44, v44, v33

    const-wide/high16 v50, 0x4008000000000000L    # 3.0

    mul-double v33, v33, v50

    const-wide/high16 v50, 0x4010000000000000L    # 4.0

    sub-double v33, v50, v33

    const-wide v52, 0x3f6b775a85ed1bbcL    # 0.0033528106718309896

    mul-double v33, v33, v52

    add-double v33, v33, v50

    mul-double v44, v44, v33

    .line 1280
    mul-double v33, v42, v42

    .line 1281
    mul-double v54, v48, v9

    div-double v56, v48, v50

    mul-double v58, v33, v40

    const-wide/high16 v60, -0x4010000000000000L    # -1.0

    add-double v58, v58, v60

    mul-double v58, v58, v13

    const-wide/high16 v62, 0x4018000000000000L    # 6.0

    div-double v48, v48, v62

    mul-double v48, v48, v42

    mul-double v62, v9, v50

    mul-double v62, v62, v9

    const-wide/high16 v64, -0x3ff8000000000000L    # -3.0

    add-double v62, v62, v64

    mul-double v48, v48, v62

    mul-double v33, v33, v50

    add-double v33, v33, v64

    mul-double v48, v48, v33

    sub-double v58, v58, v48

    mul-double v56, v56, v58

    add-double v56, v42, v56

    mul-double v33, v54, v56

    .line 1285
    sub-double v37, v37, v44

    mul-double v37, v37, v52

    mul-double v37, v37, v29

    mul-double v9, v9, v44

    mul-double v44, v44, v13

    mul-double v40, v40, v42

    mul-double v40, v40, v42

    add-double v40, v40, v60

    mul-double v44, v44, v40

    add-double v42, v42, v44

    mul-double v9, v9, v42

    add-double v9, v27, v9

    mul-double v37, v37, v9

    add-double v9, p0, v37

    .line 1288
    sub-double v13, v9, v25

    div-double/2addr v13, v9

    .line 1289
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v25, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v13, v13, v25

    if-gez v13, :cond_164

    .line 1290
    move-wide/from16 v29, v33

    move-wide/from16 v33, v46

    goto :goto_173

    .line 1259
    :cond_164
    add-int/lit8 v13, p2, 0x1

    move-wide/from16 v25, v9

    move v9, v13

    move-wide/from16 v29, v33

    move-wide/from16 v33, v46

    move-wide/from16 v13, p3

    goto/16 :goto_5a

    :cond_171
    move-wide/from16 p3, v13

    .line 1294
    :goto_173
    const-wide v9, 0x41583fc4141bda51L    # 6356752.3142

    mul-double v9, v9, v33

    sub-double v27, v27, v29

    mul-double v9, v9, v27

    double-to-float v9, v9

    iput v9, v0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    .line 1295
    mul-double v9, v17, v35

    mul-double v13, v15, p3

    mul-double v19, v11, v17

    mul-double v19, v19, v31

    move-wide/from16 p0, v13

    sub-double v13, p0, v19

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v9, v9

    .line 1297
    float-to-double v9, v9

    const-wide v13, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v9, v13

    double-to-float v9, v9

    .line 1298
    iput v9, v0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    .line 1299
    mul-double v9, v15, v35

    neg-double v11, v11

    mul-double v11, v11, v17

    mul-double v15, p0, v31

    add-double/2addr v11, v15

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v9, v9

    .line 1301
    float-to-double v9, v9

    mul-double/2addr v9, v13

    double-to-float v9, v9

    .line 1302
    iput v9, v0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    .line 1303
    iput-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    .line 1304
    iput-wide v5, v0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    .line 1305
    iput-wide v7, v0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    .line 1306
    iput-wide v1, v0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    .line 1307
    return-void
.end method

.method public static whitelist convert(Ljava/lang/String;)D
    .registers 18

    .line 1160
    move-object/from16 v0, p0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    nop

    .line 1163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_17

    .line 1164
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1165
    move-object v2, v0

    move v0, v4

    goto :goto_19

    .line 1163
    :cond_17
    move-object v2, v0

    move v0, v1

    .line 1168
    :goto_19
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ":"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    .line 1170
    const-string v6, "coordinate="

    if-lt v5, v4, :cond_100

    .line 1174
    :try_start_28
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 1176
    if-ne v5, v4, :cond_36

    .line 1177
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 1178
    if-eqz v0, :cond_35

    neg-double v1, v1

    :cond_35
    return-wide v1

    .line 1181
    :cond_36
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1182
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1184
    nop

    .line 1185
    nop

    .line 1187
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_58

    .line 1188
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v11, v5

    .line 1189
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1190
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 1191
    nop

    .line 1192
    move v3, v4

    goto :goto_5e

    .line 1193
    :cond_58
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    move v3, v1

    move-wide v13, v9

    .line 1196
    :goto_5e
    if-eqz v0, :cond_6d

    const/16 v5, 0xb4

    if-ne v7, v5, :cond_6d

    cmpl-double v5, v11, v9

    if-nez v5, :cond_6d

    cmpl-double v5, v13, v9

    if-nez v5, :cond_6d

    move v1, v4

    .line 1199
    :cond_6d
    int-to-double v4, v7

    cmpg-double v8, v4, v9

    if-ltz v8, :cond_d1

    const/16 v8, 0xb3

    if-le v7, v8, :cond_78

    if-eqz v1, :cond_d1

    .line 1204
    :cond_78
    cmpg-double v1, v11, v9

    if-ltz v1, :cond_ba

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    cmpl-double v1, v11, v7

    if-gez v1, :cond_ba

    if-eqz v3, :cond_8d

    const-wide v15, 0x404d800000000000L    # 59.0

    cmpl-double v1, v11, v15

    if-gtz v1, :cond_ba

    .line 1209
    :cond_8d
    cmpg-double v1, v13, v9

    if-ltz v1, :cond_a3

    cmpl-double v1, v13, v7

    if-gez v1, :cond_a3

    .line 1213
    const-wide v1, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v4, v1

    mul-double/2addr v11, v7

    add-double/2addr v4, v11

    add-double/2addr v4, v13

    .line 1214
    div-double/2addr v4, v1

    .line 1215
    if-eqz v0, :cond_a2

    neg-double v4, v4

    :cond_a2
    return-wide v4

    .line 1210
    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1205
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_e8} :catch_e8

    .line 1216
    :catch_e8
    move-exception v0

    .line 1217
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1171
    :cond_100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist convert(DI)Ljava/lang/String;
    .registers 10

    .line 1119
    const-wide v4, 0x4066800000000000L    # 180.0

    const-string v6, "coordinate"

    const-wide v2, -0x3f99800000000000L    # -180.0

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 1120
    const/4 p0, 0x2

    const/4 p1, 0x1

    if-eqz p2, :cond_1b

    if-eq p2, p1, :cond_1b

    if-ne p2, p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v2, p1

    .line 1121
    :goto_1c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1120
    const-string v4, "%d is an unrecognized format"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    const-wide/16 v3, 0x0

    cmpg-double v3, v0, v3

    if-gez v3, :cond_3a

    .line 1126
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1127
    neg-double v0, v0

    .line 1130
    :cond_3a
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1131
    if-eq p2, p1, :cond_45

    if-ne p2, p0, :cond_67

    .line 1132
    :cond_45
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    .line 1133
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1134
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1135
    int-to-double v5, p1

    sub-double/2addr v0, v5

    .line 1136
    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v5

    .line 1137
    if-ne p2, p0, :cond_67

    .line 1138
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 1139
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1141
    int-to-double p0, p0

    sub-double/2addr v0, p0

    .line 1142
    mul-double/2addr v0, v5

    .line 1145
    :cond_67
    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist distanceBetween(DDDD[F)V
    .registers 21

    .line 1333
    move-object/from16 v0, p8

    if-eqz v0, :cond_2f

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2f

    .line 1336
    sget-object v1, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/location/Location$BearingDistanceCache;

    .line 1337
    move-wide v3, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 1339
    const/4 p0, 0x0

    iget p1, v11, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    aput p1, v0, p0

    .line 1340
    array-length p0, v0

    if-le p0, v2, :cond_2e

    .line 1341
    iget p0, v11, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    aput p0, v0, v2

    .line 1342
    array-length p0, v0

    const/4 p1, 0x2

    if-le p0, p1, :cond_2e

    .line 1343
    iget p0, v11, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    aput p0, v0, p1

    .line 1346
    :cond_2e
    return-void

    .line 1334
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "results is null or has length < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist bearingTo(Landroid/location/Location;)F
    .registers 12

    .line 229
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/location/Location$BearingDistanceCache;

    .line 231
    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_29

    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_29

    iget-wide v0, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_29

    iget-wide v0, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_34

    .line 233
    :cond_29
    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 236
    :cond_34
    iget p1, v9, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1063
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist distanceTo(Landroid/location/Location;)F
    .registers 12

    .line 209
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/location/Location$BearingDistanceCache;

    .line 211
    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_29

    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_29

    iget-wide v0, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_29

    iget-wide v0, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_34

    .line 213
    :cond_29
    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 216
    :cond_34
    iget p1, v9, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    return p1
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1009
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 890
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 891
    return v0

    .line 893
    :cond_4
    instance-of v1, p1, Landroid/location/Location;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 894
    return v2

    .line 897
    :cond_a
    check-cast p1, Landroid/location/Location;

    .line 898
    iget-wide v3, p0, Landroid/location/Location;->mTimeMs:J

    iget-wide v5, p1, Landroid/location/Location;->mTimeMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_149

    iget-wide v3, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    iget-wide v5, p1, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_149

    .line 900
    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    .line 901
    invoke-virtual {p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v3

    if-ne v1, v3, :cond_149

    .line 902
    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-wide v3, p1, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iget-wide v5, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_149

    :cond_36
    iget-wide v3, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v5, p0, Landroid/location/Location;->mLatitudeDegrees:D

    .line 904
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_149

    iget-wide v3, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p0, Landroid/location/Location;->mLongitudeDegrees:D

    .line 905
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_149

    .line 906
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-ne v1, v3, :cond_149

    .line 907
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_64

    iget-wide v3, p1, Landroid/location/Location;->mAltitudeMeters:D

    iget-wide v5, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_149

    .line 909
    :cond_64
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-ne v1, v3, :cond_149

    .line 910
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_7e

    iget v1, p1, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iget v3, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_149

    .line 912
    :cond_7e
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-ne v1, v3, :cond_149

    .line 913
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_98

    iget v1, p1, Landroid/location/Location;->mBearingDegrees:F

    iget v3, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_149

    .line 914
    :cond_98
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-ne v1, v3, :cond_149

    .line 915
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_b2

    iget v1, p1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget v3, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_149

    .line 917
    :cond_b2
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v3

    if-ne v1, v3, :cond_149

    .line 918
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_cc

    iget v1, p1, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iget v3, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_149

    .line 920
    :cond_cc
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v3

    if-ne v1, v3, :cond_149

    .line 921
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_e6

    iget v1, p1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget v3, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_149

    .line 923
    :cond_e6
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v3

    if-ne v1, v3, :cond_149

    .line 924
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_100

    iget v1, p1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget v3, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_149

    .line 926
    :cond_100
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v3

    if-ne v1, v3, :cond_149

    .line 927
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v1

    if-eqz v1, :cond_11a

    iget-wide v3, p1, Landroid/location/Location;->mMslAltitudeMeters:D

    iget-wide v5, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_149

    .line 930
    :cond_11a
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v3

    if-ne v1, v3, :cond_149

    .line 931
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v1

    if-eqz v1, :cond_134

    iget v1, p1, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iget v3, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_149

    :cond_134
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-object v3, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 934
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 935
    invoke-static {v1, p1}, Landroid/location/Location;->areExtrasEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_149

    goto :goto_14a

    :cond_149
    move v0, v2

    .line 898
    :goto_14a
    return v0
.end method

.method public whitelist getAccuracy()F
    .registers 2

    .line 447
    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return v0
.end method

.method public whitelist getAltitude()D
    .registers 3

    .line 482
    iget-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    return-wide v0
.end method

.method public whitelist getBearing()F
    .registers 2

    .line 632
    iget v0, p0, Landroid/location/Location;->mBearingDegrees:F

    return v0
.end method

.method public whitelist getBearingAccuracyDegrees()F
    .registers 2

    .line 682
    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return v0
.end method

.method public whitelist getElapsedRealtimeAgeMillis()J
    .registers 3

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeAgeMillis(J)J
    .registers 5

    .line 342
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public whitelist getElapsedRealtimeMillis()J
    .registers 4

    .line 320
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeNanos()J
    .registers 3

    .line 310
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeUncertaintyNanos()D
    .registers 3

    .line 365
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 836
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getLatitude()D
    .registers 3

    .line 402
    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    return-wide v0
.end method

.method public whitelist getLongitude()D
    .registers 3

    .line 421
    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    return-wide v0
.end method

.method public whitelist getMslAltitudeAccuracyMeters()F
    .registers 2

    .line 748
    iget v0, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    return v0
.end method

.method public whitelist getMslAltitudeMeters()D
    .registers 3

    .line 715
    iget-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    return-wide v0
.end method

.method public whitelist getProvider()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSpeed()F
    .registers 2

    .line 557
    iget v0, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    return v0
.end method

.method public whitelist getSpeedAccuracyMetersPerSecond()F
    .registers 2

    .line 594
    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return v0
.end method

.method public whitelist getTime()J
    .registers 3

    .line 282
    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    return-wide v0
.end method

.method public whitelist getVerticalAccuracyMeters()F
    .registers 2

    .line 519
    iget v0, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    return v0
.end method

.method public whitelist hasAccuracy()Z
    .registers 2

    .line 464
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasAltitude()Z
    .registers 3

    .line 499
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist hasBearing()Z
    .registers 2

    .line 662
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasBearingAccuracy()Z
    .registers 2

    .line 699
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasElapsedRealtimeUncertaintyNanos()Z
    .registers 2

    .line 385
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasMslAltitude()Z
    .registers 2

    .line 730
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasMslAltitudeAccuracy()Z
    .registers 2

    .line 764
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasSpeed()Z
    .registers 2

    .line 574
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasSpeedAccuracy()Z
    .registers 2

    .line 612
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasVerticalAccuracy()Z
    .registers 2

    .line 536
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 950
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isComplete()Z
    .registers 5

    .line 857
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public whitelist isFromMockProvider()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 784
    invoke-virtual {p0}, Landroid/location/Location;->isMock()Z

    move-result v0

    return v0
.end method

.method public whitelist isMock()Z
    .registers 2

    .line 808
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist makeComplete()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 867
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 868
    const-string v0, ""

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 870
    :cond_8
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_18

    .line 871
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 872
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 874
    :cond_18
    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    .line 877
    :cond_26
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    .line 878
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    .line 880
    :cond_32
    return-void
.end method

.method public whitelist removeAccuracy()V
    .registers 2

    .line 471
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 472
    return-void
.end method

.method public whitelist removeAltitude()V
    .registers 2

    .line 506
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 507
    return-void
.end method

.method public whitelist removeBearing()V
    .registers 2

    .line 669
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 670
    return-void
.end method

.method public whitelist removeBearingAccuracy()V
    .registers 2

    .line 706
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 707
    return-void
.end method

.method public whitelist removeElapsedRealtimeUncertaintyNanos()V
    .registers 2

    .line 392
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 393
    return-void
.end method

.method public whitelist removeMslAltitude()V
    .registers 2

    .line 737
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 738
    return-void
.end method

.method public whitelist removeMslAltitudeAccuracy()V
    .registers 2

    .line 771
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 772
    return-void
.end method

.method public whitelist removeSpeed()V
    .registers 2

    .line 581
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 582
    return-void
.end method

.method public whitelist removeSpeedAccuracy()V
    .registers 2

    .line 619
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 620
    return-void
.end method

.method public whitelist removeVerticalAccuracy()V
    .registers 2

    .line 543
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 544
    return-void
.end method

.method public whitelist reset()V
    .registers 5

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 183
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mTimeMs:J

    .line 184
    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    .line 185
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    .line 186
    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mFieldsMask:I

    .line 187
    iput-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    .line 188
    iput-wide v1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    .line 189
    iput-wide v1, p0, Landroid/location/Location;->mAltitudeMeters:D

    .line 190
    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    .line 191
    iput v3, p0, Landroid/location/Location;->mBearingDegrees:F

    .line 192
    iput v3, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 193
    iput v3, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    .line 194
    iput v3, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 195
    iput v3, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 196
    iput-wide v1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    .line 197
    iput v3, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    .line 198
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 199
    return-void
.end method

.method public whitelist set(Landroid/location/Location;)V
    .registers 4

    .line 158
    iget v0, p1, Landroid/location/Location;->mFieldsMask:I

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 159
    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 160
    iget-wide v0, p1, Landroid/location/Location;->mTimeMs:J

    iput-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    .line 161
    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNs:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    .line 162
    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    .line 163
    iget-wide v0, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    .line 164
    iget-wide v0, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    .line 165
    iget v0, p1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 166
    iget-wide v0, p1, Landroid/location/Location;->mAltitudeMeters:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    .line 167
    iget v0, p1, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    .line 168
    iget v0, p1, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    .line 169
    iget v0, p1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 170
    iget v0, p1, Landroid/location/Location;->mBearingDegrees:F

    iput v0, p0, Landroid/location/Location;->mBearingDegrees:F

    .line 171
    iget v0, p1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 172
    iget-wide v0, p1, Landroid/location/Location;->mMslAltitudeMeters:D

    iput-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    .line 173
    iget v0, p1, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    .line 174
    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_46

    const/4 p1, 0x0

    goto :goto_4e

    :cond_46
    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_4e
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 175
    return-void
.end method

.method public whitelist setAccuracy(F)V
    .registers 2

    .line 456
    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 457
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 458
    return-void
.end method

.method public whitelist setAltitude(D)V
    .registers 3

    .line 491
    iput-wide p1, p0, Landroid/location/Location;->mAltitudeMeters:D

    .line 492
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 493
    return-void
.end method

.method public whitelist setBearing(F)V
    .registers 4

    .line 646
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 650
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/4 v1, 0x0

    add-float/2addr p1, v1

    .line 651
    cmpg-float v1, p1, v1

    if-gez v1, :cond_11

    .line 652
    add-float/2addr p1, v0

    .line 654
    :cond_11
    iput p1, p0, Landroid/location/Location;->mBearingDegrees:F

    .line 655
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 656
    return-void
.end method

.method public whitelist setBearingAccuracyDegrees(F)V
    .registers 2

    .line 691
    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 692
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 693
    return-void
.end method

.method public whitelist setElapsedRealtimeNanos(J)V
    .registers 3

    .line 351
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    .line 352
    return-void
.end method

.method public whitelist setElapsedRealtimeUncertaintyNanos(D)V
    .registers 3

    .line 377
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    .line 378
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 379
    return-void
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)V
    .registers 3

    .line 846
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_a
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 847
    return-void
.end method

.method public whitelist setIsFromMockProvider(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 797
    invoke-virtual {p0, p1}, Landroid/location/Location;->setMock(Z)V

    .line 798
    return-void
.end method

.method public whitelist setLatitude(D)V
    .registers 3

    .line 411
    iput-wide p1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    .line 412
    return-void
.end method

.method public whitelist setLongitude(D)V
    .registers 3

    .line 430
    iput-wide p1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    .line 431
    return-void
.end method

.method public whitelist setMock(Z)V
    .registers 2

    .line 815
    if-eqz p1, :cond_9

    .line 816
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    goto :goto_f

    .line 818
    :cond_9
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 820
    :goto_f
    return-void
.end method

.method public whitelist setMslAltitudeAccuracyMeters(F)V
    .registers 2

    .line 756
    iput p1, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    .line 757
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 758
    return-void
.end method

.method public whitelist setMslAltitudeMeters(D)V
    .registers 3

    .line 722
    iput-wide p1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    .line 723
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 724
    return-void
.end method

.method public whitelist setProvider(Ljava/lang/String;)V
    .registers 2

    .line 254
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public whitelist setSpeed(F)V
    .registers 2

    .line 566
    iput p1, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    .line 567
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 568
    return-void
.end method

.method public whitelist setSpeedAccuracyMetersPerSecond(F)V
    .registers 2

    .line 604
    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 605
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 606
    return-void
.end method

.method public whitelist setTime(J)V
    .registers 3

    .line 292
    iput-wide p1, p0, Landroid/location/Location;->mTimeMs:J

    .line 293
    return-void
.end method

.method public whitelist setVerticalAccuracyMeters(F)V
    .registers 2

    .line 528
    iput p1, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    .line 529
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    .line 530
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v3, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Landroid/location/Location;->mLongitudeDegrees:D

    .line 959
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 958
    const-string v4, "%.6f,%.6f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 961
    const-string v1, " hAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 963
    :cond_41
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 965
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 966
    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 968
    const-string v1, " vAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 971
    :cond_6f
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 972
    const-string v1, " mslAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 974
    const-string v1, " mslAltAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 977
    :cond_91
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 978
    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 980
    const-string v1, " sAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 983
    :cond_b3
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 984
    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 986
    const-string v1, " bAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 989
    :cond_d5
    invoke-virtual {p0}, Landroid/location/Location;->isMock()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 990
    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    :cond_e0
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_fd

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fd

    .line 994
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    :cond_fd
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1068
    iget-object p2, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1069
    iget p2, p0, Landroid/location/Location;->mFieldsMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1071
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1072
    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 1073
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1075
    :cond_1f
    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1076
    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1077
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 1078
    iget-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1080
    :cond_34
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 1081
    iget p2, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1083
    :cond_3f
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 1084
    iget p2, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1086
    :cond_4a
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result p2

    if-eqz p2, :cond_55

    .line 1087
    iget p2, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1089
    :cond_55
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result p2

    if-eqz p2, :cond_60

    .line 1090
    iget p2, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1092
    :cond_60
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 1093
    iget p2, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1095
    :cond_6b
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result p2

    if-eqz p2, :cond_76

    .line 1096
    iget p2, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1098
    :cond_76
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result p2

    if-eqz p2, :cond_81

    .line 1099
    iget-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1101
    :cond_81
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result p2

    if-eqz p2, :cond_8c

    .line 1102
    iget p2, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1104
    :cond_8c
    iget-object p2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1105
    return-void
.end method
