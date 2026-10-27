.class public Landroid/hardware/face/FaceAuthenticateOptions;
.super Ljava/lang/Object;
.source "FaceAuthenticateOptions.java"

# interfaces
.implements Landroid/hardware/biometrics/AuthenticateOptions;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceAuthenticateOptions$Builder;,
        Landroid/hardware/face/FaceAuthenticateOptions$AuthenticateReason;
    }
.end annotation


# static fields
.field public static final blacklist AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN:I = 0x4

.field public static final blacklist AUTHENTICATE_REASON_ASSISTANT_VISIBLE:I = 0x3

.field public static final blacklist AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED:I = 0x5

.field public static final blacklist AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED:I = 0x6

.field public static final blacklist AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED:I = 0x7

.field public static final blacklist AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN:I = 0x2

.field public static final blacklist AUTHENTICATE_REASON_QS_EXPANDED:I = 0x8

.field public static final blacklist AUTHENTICATE_REASON_STARTED_WAKING_UP:I = 0x1

.field public static final blacklist AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER:I = 0x9

.field public static final blacklist AUTHENTICATE_REASON_UDFPS_POINTER_DOWN:I = 0xa

.field public static final blacklist AUTHENTICATE_REASON_UNKNOWN:I

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceAuthenticateOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mAuthenticateReason:I

.field private final blacklist mDisplayState:I

.field private blacklist mIsMandatoryBiometrics:Z

.field private blacklist mOpPackageName:Ljava/lang/String;

.field private blacklist mSensorId:I

.field private final blacklist mUserId:I

.field private final blacklist mWakeReason:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAttributionTag()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultAuthenticateReason()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultAuthenticateReason()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultDisplayState()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultDisplayState()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultOpPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSensorId()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultSensorId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultUserId()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultUserId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultWakeReason()I
    .registers 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultWakeReason()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 483
    new-instance v0, Landroid/hardware/face/FaceAuthenticateOptions$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceAuthenticateOptions$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IIIIILjava/lang/String;Ljava/lang/String;Z)V
    .registers 21

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    .line 196
    iput p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    .line 197
    iput p3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    .line 198
    const-class p1, Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;

    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 200
    move/from16 p1, p4

    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    .line 202
    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-eqz p1, :cond_e0

    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e0

    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_e0

    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_e0

    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v4, 0x4

    if-eq p1, v4, :cond_e0

    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v5, 0x5

    if-eq p1, v5, :cond_e0

    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v6, 0x6

    if-eq p1, v6, :cond_e0

    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v7, 0x7

    if-eq p1, v7, :cond_e0

    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v8, 0x8

    if-eq p1, v8, :cond_e0

    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v9, 0x9

    if-eq p1, v9, :cond_e0

    iget p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v10, 0xa

    if-ne p1, v10, :cond_50

    goto/16 :goto_e0

    .line 213
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "authenticateReason was "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v11, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " but must be one of: AUTHENTICATE_REASON_UNKNOWN("

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "), AUTHENTICATE_REASON_STARTED_WAKING_UP("

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), AUTHENTICATE_REASON_ASSISTANT_VISIBLE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), AUTHENTICATE_REASON_QS_EXPANDED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), AUTHENTICATE_REASON_UDFPS_POINTER_DOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_e0
    :goto_e0
    move/from16 p1, p5

    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    .line 229
    const-class p1, Landroid/os/PowerManager$WakeReason;

    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 231
    move-object/from16 p1, p6

    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 232
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 234
    move-object/from16 p1, p7

    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 235
    move/from16 p1, p8

    iput-boolean p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    .line 238
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 18

    .line 423
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 428
    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_11

    move v2, v4

    goto :goto_12

    :cond_11
    move v2, v3

    .line 429
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 435
    and-int/lit8 v1, v1, 0x40

    const/4 v11, 0x0

    if-nez v1, :cond_31

    move-object v1, v11

    goto :goto_35

    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 437
    :goto_35
    iput v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    .line 438
    iput v6, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    .line 439
    iput v7, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    .line 440
    const-class v5, Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;

    iget v6, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    invoke-static {v5, v11, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 442
    iput v8, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    .line 444
    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-eqz v5, :cond_10f

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-eq v5, v4, :cond_10f

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_10f

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v7, 0x3

    if-eq v5, v7, :cond_10f

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v8, 0x4

    if-eq v5, v8, :cond_10f

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v12, 0x5

    if-eq v5, v12, :cond_10f

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v13, 0x6

    if-eq v5, v13, :cond_10f

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/4 v14, 0x7

    if-eq v5, v14, :cond_10f

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v15, 0x8

    if-eq v5, v15, :cond_10f

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v11, 0x9

    if-eq v5, v11, :cond_10f

    iget v5, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    const/16 v11, 0xa

    if-ne v5, v11, :cond_7e

    goto/16 :goto_10f

    .line 455
    :cond_7e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authenticateReason was "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but must be one of: AUTHENTICATE_REASON_UNKNOWN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), AUTHENTICATE_REASON_STARTED_WAKING_UP("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), AUTHENTICATE_REASON_ASSISTANT_VISIBLE("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), AUTHENTICATE_REASON_QS_EXPANDED("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), AUTHENTICATE_REASON_UDFPS_POINTER_DOWN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_10f
    :goto_10f
    iput v9, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    .line 471
    const-class v3, Landroid/os/PowerManager$WakeReason;

    iget v4, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 473
    iput-object v10, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 474
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 476
    iput-object v1, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 477
    iput-boolean v2, v0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    .line 480
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    return-void
.end method

.method public static blacklist authenticateReasonToString(I)Ljava/lang/String;
    .registers 1

    .line 158
    packed-switch p0, :pswitch_data_2a

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :pswitch_8
    const-string p0, "AUTHENTICATE_REASON_UDFPS_POINTER_DOWN"

    return-object p0

    .line 178
    :pswitch_b
    const-string p0, "AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER"

    return-object p0

    .line 176
    :pswitch_e
    const-string p0, "AUTHENTICATE_REASON_QS_EXPANDED"

    return-object p0

    .line 174
    :pswitch_11
    const-string p0, "AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED"

    return-object p0

    .line 172
    :pswitch_14
    const-string p0, "AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED"

    return-object p0

    .line 170
    :pswitch_17
    const-string p0, "AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED"

    return-object p0

    .line 168
    :pswitch_1a
    const-string p0, "AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN"

    return-object p0

    .line 166
    :pswitch_1d
    const-string p0, "AUTHENTICATE_REASON_ASSISTANT_VISIBLE"

    return-object p0

    .line 164
    :pswitch_20
    const-string p0, "AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN"

    return-object p0

    .line 162
    :pswitch_23
    const-string p0, "AUTHENTICATE_REASON_STARTED_WAKING_UP"

    return-object p0

    .line 160
    :pswitch_26
    const-string p0, "AUTHENTICATE_REASON_UNKNOWN"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static blacklist defaultAttributionTag()Ljava/lang/String;
    .registers 1

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultAuthenticateReason()I
    .registers 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultDisplayState()I
    .registers 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultOpPackageName()Ljava/lang/String;
    .registers 1

    .line 108
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist defaultSensorId()I
    .registers 1

    .line 57
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist defaultUserId()I
    .registers 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultWakeReason()I
    .registers 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 363
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 364
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4f

    .line 366
    :cond_12
    check-cast p1, Landroid/hardware/face/FaceAuthenticateOptions;

    .line 368
    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    iget v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    if-ne v2, v3, :cond_4d

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    iget v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    if-ne v2, v3, :cond_4d

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    iget v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    if-ne v2, v3, :cond_4d

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    iget v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-ne v2, v3, :cond_4d

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    iget v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    if-ne v2, v3, :cond_4d

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 374
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 375
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-boolean v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    iget-boolean p1, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    if-ne v2, p1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v1

    .line 368
    :goto_4e
    return v0

    .line 364
    :cond_4f
    :goto_4f
    return v1
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAuthenticateReason()I
    .registers 2

    .line 273
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    return v0
.end method

.method public blacklist getDisplayState()I
    .registers 2

    .line 261
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    return v0
.end method

.method public blacklist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSensorId()I
    .registers 2

    .line 253
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 245
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    return v0
.end method

.method public blacklist getWakeReason()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 385
    nop

    .line 386
    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 387
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    add-int/2addr v0, v2

    .line 388
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    add-int/2addr v0, v2

    .line 389
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    add-int/2addr v0, v2

    .line 390
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    add-int/2addr v0, v2

    .line 391
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 392
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 393
    mul-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    return v0
.end method

.method public blacklist isMandatoryBiometrics()Z
    .registers 2

    .line 310
    iget-boolean v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return v0
.end method

.method public blacklist setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;
    .registers 2

    .line 343
    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public blacklist setIsMandatoryBiometrics(Z)Landroid/hardware/face/FaceAuthenticateOptions;
    .registers 2

    .line 352
    iput-boolean p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    .line 353
    return-object p0
.end method

.method public blacklist setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;
    .registers 4

    .line 330
    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    .line 331
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 333
    return-object p0
.end method

.method public blacklist setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions;
    .registers 2

    .line 318
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    .line 319
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 403
    nop

    .line 404
    iget-boolean p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    if-eqz p2, :cond_8

    const/16 p2, 0x80

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 405
    :goto_9
    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    if-eqz v0, :cond_f

    or-int/lit8 p2, p2, 0x40

    .line 406
    :cond_f
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget-object p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget-object p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    if-eqz p2, :cond_39

    iget-object p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    :cond_39
    return-void
.end method
