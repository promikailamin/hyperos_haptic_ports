.class public final Landroid/media/projection/MediaProjectionConfig;
.super Ljava/lang/Object;
.source "MediaProjectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionConfig$Builder;,
        Landroid/media/projection/MediaProjectionConfig$MediaProjectionSource;,
        Landroid/media/projection/MediaProjectionConfig$CaptureRegion;
    }
.end annotation


# static fields
.field public static final blacklist CAPTURE_REGION_FIXED_DISPLAY:I = 0x1

.field public static final blacklist CAPTURE_REGION_USER_CHOICE:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/projection/MediaProjectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_PROJECTION_SOURCES:I = 0xa

.field private static final blacklist PROJECTION_SOURCES:[I

.field private static final blacklist PROJECTION_SOURCES_STRING:[Ljava/lang/String;

.field public static final blacklist PROJECTION_SOURCE_APP:I = 0x8

.field public static final blacklist PROJECTION_SOURCE_APP_CONTENT:I = 0x10

.field public static final blacklist PROJECTION_SOURCE_DISPLAY:I = 0x2

.field public static final blacklist PROJECTION_SOURCE_DISPLAY_REGION:I = 0x4

.field private static final blacklist VALID_PROJECTION_SOURCES:I


# instance fields
.field private final blacklist mDisplayToCapture:I

.field private final blacklist mInitialSelection:I

.field private final blacklist mOwnAppContentProvided:Z

.field private final blacklist mProjectionSources:I

.field private blacklist mRegionToCapture:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final blacklist mRequesterHint:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetPROJECTION_SOURCES()[I
    .registers 1

    sget-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPROJECTION_SOURCES_STRING()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVALID_PROJECTION_SOURCES()I
    .registers 1

    sget v0, Landroid/media/projection/MediaProjectionConfig;->VALID_PROJECTION_SOURCES:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smprojectionSourceToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/media/projection/MediaProjectionConfig;->projectionSourceToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 96
    const/16 v0, 0x8

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x4

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    .line 101
    const-string v0, "PROJECTION_SOURCE_APP"

    const-string v1, "PROJECTION_SOURCE_APP_CONTENT"

    const-string v2, "PROJECTION_SOURCE_DISPLAY"

    const-string v3, "PROJECTION_SOURCE_DISPLAY_REGION"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES_STRING:[Ljava/lang/String;

    .line 105
    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->createValidSourcesMask()I

    move-result v0

    sput v0, Landroid/media/projection/MediaProjectionConfig;->VALID_PROJECTION_SOURCES:I

    .line 368
    new-instance v0, Landroid/media/projection/MediaProjectionConfig$1;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionConfig$1;-><init>()V

    sput-object v0, Landroid/media/projection/MediaProjectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-nez v0, :cond_19

    .line 163
    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    .line 164
    const/4 p1, 0x0

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    .line 168
    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    .line 169
    iput-boolean p1, p0, Landroid/media/projection/MediaProjectionConfig;->mOwnAppContentProvided:Z

    .line 170
    return-void

    .line 160
    :cond_19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Flag FLAG_APP_CONTENT_SHARING enabled. This method must not be called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(ILjava/lang/String;IIZ)V
    .registers 7

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 182
    if-nez p1, :cond_10

    .line 183
    const/16 p1, 0xa

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    goto :goto_12

    .line 185
    :cond_10
    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    .line 187
    :goto_12
    iput-object p2, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    .line 188
    iput p3, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    .line 189
    iput p4, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    .line 190
    iput-boolean p5, p0, Landroid/media/projection/MediaProjectionConfig;->mOwnAppContentProvided:Z

    .line 191
    return-void

    .line 179
    :cond_1b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Flag FLAG_APP_CONTENT_SHARING disabled. This method must not be called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;IIZLandroid/media/projection/MediaProjectionConfig-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/projection/MediaProjectionConfig;-><init>(ILjava/lang/String;IIZ)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    .line 354
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/projection/MediaProjectionConfig;->mOwnAppContentProvided:Z

    goto :goto_39

    .line 360
    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    .line 361
    const/4 p1, -0x1

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    .line 363
    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    .line 364
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/media/projection/MediaProjectionConfig;->mOwnAppContentProvided:Z

    .line 366
    :goto_39
    return-void
.end method

.method private static blacklist captureRegionToString(I)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    packed-switch p0, :pswitch_data_e

    .line 234
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 233
    :pswitch_8
    const-string p0, "CAPTURE_REGION_GIVEN_DISPLAY"

    goto :goto_d

    .line 232
    :pswitch_b
    const-string p0, "CAPTURE_REGION_USERS_CHOICE"

    .line 231
    :goto_d
    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static whitelist createConfigForDefaultDisplay()Landroid/media/projection/MediaProjectionConfig;
    .registers 3

    .line 198
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 199
    new-instance v0, Landroid/media/projection/MediaProjectionConfig$Builder;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/media/projection/MediaProjectionConfig$Builder;->setSourceEnabled(IZ)Landroid/media/projection/MediaProjectionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;->build()Landroid/media/projection/MediaProjectionConfig;

    move-result-object v0

    return-object v0

    .line 201
    :cond_16
    new-instance v0, Landroid/media/projection/MediaProjectionConfig;

    invoke-direct {v0, v1}, Landroid/media/projection/MediaProjectionConfig;-><init>(I)V

    return-object v0
.end method

.method public static whitelist createConfigForUserChoice()Landroid/media/projection/MediaProjectionConfig;
    .registers 2

    .line 218
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 219
    new-instance v0, Landroid/media/projection/MediaProjectionConfig$Builder;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;->build()Landroid/media/projection/MediaProjectionConfig;

    move-result-object v0

    return-object v0

    .line 221
    :cond_10
    new-instance v0, Landroid/media/projection/MediaProjectionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/projection/MediaProjectionConfig;-><init>(I)V

    return-object v0
.end method

.method private static blacklist createValidSourcesMask()I
    .registers 5

    .line 438
    nop

    .line 439
    sget-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v2, v1, :cond_e

    aget v4, v0, v2

    .line 440
    or-int/2addr v3, v4

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 442
    :cond_e
    return v3
.end method

.method private static blacklist projectionSourceToString(I)Ljava/lang/String;
    .registers 4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    const/4 v1, 0x0

    :goto_6
    sget-object v2, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_27

    .line 245
    sget-object v2, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    aget v2, v2, v1

    and-int/2addr v2, p0

    if-lez v2, :cond_24

    .line 246
    sget-object v2, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES_STRING:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    sget-object v2, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    aget v2, v2, v1

    not-int v2, v2

    and-int/2addr p0, v2

    .line 244
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 251
    :cond_27
    if-lez p0, :cond_35

    .line 252
    const-string v1, "Unknown projection sources: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 306
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 307
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    .line 308
    :cond_12
    check-cast p1, Landroid/media/projection/MediaProjectionConfig;

    .line 309
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 310
    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    iget v3, p1, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    if-ne v2, v3, :cond_37

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    iget v3, p1, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    if-ne v2, v3, :cond_37

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    iget v3, p1, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    .line 313
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    .line 310
    :goto_38
    return v0

    .line 315
    :cond_39
    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    iget v3, p1, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    if-ne v2, v3, :cond_46

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    iget p1, p1, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    if-ne v2, p1, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    :goto_47
    return v0

    .line 307
    :cond_48
    :goto_48
    return v1
.end method

.method public blacklist getDisplayToCapture()I
    .registers 2

    .line 280
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    return v0
.end method

.method public blacklist getInitiallySelectedSource()I
    .registers 2

    .line 398
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    return v0
.end method

.method public blacklist getProjectionSources()I
    .registers 2

    .line 301
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    return v0
.end method

.method public blacklist getRegionToCapture()I
    .registers 2

    .line 289
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    return v0
.end method

.method public blacklist getRequesterHint()Ljava/lang/CharSequence;
    .registers 2

    .line 434
    iget-object v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 322
    nop

    .line 323
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 324
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 327
    :cond_24
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 328
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    add-int/2addr v0, v1

    .line 330
    return v0
.end method

.method public blacklist isOwnAppContentProvided()Z
    .registers 2

    .line 417
    iget-boolean v0, p0, Landroid/media/projection/MediaProjectionConfig;->mOwnAppContentProvided:Z

    return v0
.end method

.method public blacklist isSourceEnabled(I)Z
    .registers 3

    .line 389
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    and-int/2addr p1, v0

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 260
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 261
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    invoke-static {v2}, Landroid/media/projection/MediaProjectionConfig;->projectionSourceToString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 262
    const-string v1, "MediaProjectionConfig{mInitialSelection=%d, mDisplayToCapture=%d, mProjectionSource=%s, mRequesterHint=\'%s\'}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    return-object v0

    .line 266
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaProjectionConfig { displayToCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regionToCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    .line 267
    invoke-static {v1}, Landroid/media/projection/MediaProjectionConfig;->captureRegionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 335
    iget p2, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 337
    iget p2, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object p2, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget p2, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-boolean p2, p0, Landroid/media/projection/MediaProjectionConfig;->mOwnAppContentProvided:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_25

    .line 342
    :cond_20
    iget p2, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    :goto_25
    return-void
.end method
