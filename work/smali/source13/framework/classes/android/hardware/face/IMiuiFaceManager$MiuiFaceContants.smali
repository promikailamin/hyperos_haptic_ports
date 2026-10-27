.class public Landroid/hardware/face/IMiuiFaceManager$MiuiFaceContants;
.super Ljava/lang/Object;
.source "IMiuiFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IMiuiFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiFaceContants"
.end annotation


# static fields
.field public static final blacklist AUTHENTICATE_TIMEOUT_SEC:I = 0x5

.field public static final blacklist DEBUG:Z = true

.field public static final blacklist ENROLL_TIMEOUT_SEC:I = 0x3c

.field public static final blacklist ERROR_BINDER_CALL:I = 0x834

.field public static final blacklist ERROR_CANCELED:I = 0x7d0

.field public static final blacklist ERROR_SERVICE_IS_BUSY:I = 0x7d1

.field public static final blacklist ERROR_SERVICE_IS_IDLE:I = 0x7d2

.field public static final blacklist ERROR_TIME_OUT:I = 0x7d3

.field public static final blacklist MAX_FAILED_ATTEMPTS:I = 0x5

.field public static final blacklist MAX_LIVE_ATTACKS:I = 0x3

.field public static final blacklist MG_ATTR_BLUR:I = 0x14

.field public static final blacklist MG_ATTR_EYE_CLOSE:I = 0x16

.field public static final blacklist MG_ATTR_EYE_OCCLUSION:I = 0x15

.field public static final blacklist MG_ATTR_MOUTH_OCCLUSION:I = 0x17

.field public static final blacklist MG_OPEN_CAMERA_FAIL:I = 0x3e8

.field public static final blacklist MG_OPEN_CAMERA_SUCCESS:I = 0x3e9

.field public static final blacklist MG_UNLOCK_BAD_LIGHT:I = 0x1a

.field public static final blacklist MG_UNLOCK_COMPARE_FAILURE:I = 0xc

.field public static final blacklist MG_UNLOCK_DARKLIGHT:I = 0x1e

.field public static final blacklist MG_UNLOCK_FACE_BAD_QUALITY:I = 0x4

.field public static final blacklist MG_UNLOCK_FACE_BLUR:I = 0x1c

.field public static final blacklist MG_UNLOCK_FACE_DOWN:I = 0x12

.field public static final blacklist MG_UNLOCK_FACE_MULTI:I = 0x1b

.field public static final blacklist MG_UNLOCK_FACE_NOT_COMPLETE:I = 0x1d

.field public static final blacklist MG_UNLOCK_FACE_NOT_FOUND:I = 0x5

.field public static final blacklist MG_UNLOCK_FACE_NOT_ROI:I = 0x21

.field public static final blacklist MG_UNLOCK_FACE_OFFSET_BOTTOM:I = 0xb

.field public static final blacklist MG_UNLOCK_FACE_OFFSET_LEFT:I = 0x8

.field public static final blacklist MG_UNLOCK_FACE_OFFSET_RIGHT:I = 0xa

.field public static final blacklist MG_UNLOCK_FACE_OFFSET_TOP:I = 0x9

.field public static final blacklist MG_UNLOCK_FACE_RISE:I = 0x10

.field public static final blacklist MG_UNLOCK_FACE_ROTATED_LEFT:I = 0xf

.field public static final blacklist MG_UNLOCK_FACE_ROTATED_RIGHT:I = 0x11

.field public static final blacklist MG_UNLOCK_FACE_SCALE_TOO_LARGE:I = 0x7

.field public static final blacklist MG_UNLOCK_FACE_SCALE_TOO_SMALL:I = 0x6

.field public static final blacklist MG_UNLOCK_FAILURE:I = 0x3

.field public static final blacklist MG_UNLOCK_FEATURE_MISS:I = 0x18

.field public static final blacklist MG_UNLOCK_FEATURE_VERSION_ERROR:I = 0x19

.field public static final blacklist MG_UNLOCK_HALF_SHADOW:I = 0x20

.field public static final blacklist MG_UNLOCK_HIGHLIGHT:I = 0x1f

.field public static final blacklist MG_UNLOCK_INVALID_ARGUMENT:I = 0x1

.field public static final blacklist MG_UNLOCK_INVALID_HANDLE:I = 0x2

.field public static final blacklist MG_UNLOCK_KEEP:I = 0x13

.field public static final blacklist MG_UNLOCK_LIVENESS_FAILURE:I = 0xe

.field public static final blacklist MG_UNLOCK_LIVENESS_WARNING:I = 0xd

.field public static final blacklist MG_UNLOCK_OK:I = 0x0

.field public static final blacklist ST_FACE_ENROLL_NOT_SAME_PERSON:I = 0x24

.field public static final blacklist ST_FACE_ENROLL_REACH_UPPER_LIMIT:I = 0x23

.field public static final blacklist TAG:Ljava/lang/String; = "MiuiFaceManager"

.field public static blacklist TEMPLATE_INVALIDATE:I = 0x0

.field public static blacklist TEMPLATE_NONE:I = 0x0

.field public static blacklist TEMPLATE_SERVICE_NOT_INIT:I = 0x0

.field public static blacklist TEMPLATE_VALIDATE:I = 0x0

.field public static final blacklist UNLOCK_TYPE_REE:I = 0x2

.field public static final blacklist UNLOCK_TYPE_TEE:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const/4 v0, -0x1

    sput v0, Landroid/hardware/face/IMiuiFaceManager$MiuiFaceContants;->TEMPLATE_INVALIDATE:I

    .line 55
    const/4 v0, 0x0

    sput v0, Landroid/hardware/face/IMiuiFaceManager$MiuiFaceContants;->TEMPLATE_NONE:I

    .line 56
    const/4 v0, -0x2

    sput v0, Landroid/hardware/face/IMiuiFaceManager$MiuiFaceContants;->TEMPLATE_SERVICE_NOT_INIT:I

    .line 57
    const/4 v0, 0x1

    sput v0, Landroid/hardware/face/IMiuiFaceManager$MiuiFaceContants;->TEMPLATE_VALIDATE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
