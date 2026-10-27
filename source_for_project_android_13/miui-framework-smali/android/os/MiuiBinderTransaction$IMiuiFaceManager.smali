.class public final Landroid/os/MiuiBinderTransaction$IMiuiFaceManager;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IMiuiFaceManager"
.end annotation


# static fields
.field public static final blacklist CODE_ADD_LOCKOUT_RESET_CALLBACK:I = 0x10

.field public static final blacklist CODE_AUTHENTICATE:I = 0x3

.field public static final blacklist CODE_CANCEL_AUTHENTICATE:I = 0x4

.field public static final blacklist CODE_CANCEL_ENROLL:I = 0x6

.field public static final blacklist CODE_ENROLL:I = 0x5

.field public static final blacklist CODE_EXT_CMD:I = 0x65

.field public static final blacklist CODE_GET_AUTHENTICATOR_ID:I = 0xe

.field public static final blacklist CODE_GET_ENROLLED_FACE_LIST:I = 0x9

.field public static final blacklist CODE_GET_VENDOR_INFO:I = 0x11

.field public static final blacklist CODE_HAS_ENROLLED_FACES:I = 0xc

.field public static final blacklist CODE_POST_ENROLL:I = 0xb

.field public static final blacklist CODE_PRE_ENROLL:I = 0xa

.field public static final blacklist CODE_PRE_INIT_AUTHEN:I = 0x2

.field public static final blacklist CODE_REMOVE:I = 0x7

.field public static final blacklist CODE_RENAME:I = 0x8

.field public static final blacklist CODE_RESET_TIMEOUT:I = 0xf

.field public static final blacklist RECEIVER_DESCRIPTOR:Ljava/lang/String; = "receiver.FaceService"

.field public static final blacklist RECEIVER_ON_AUTHENTICATION_FAILED:I = 0xcc

.field public static final blacklist RECEIVER_ON_AUTHENTICATION_SUCCEEDED:I = 0xcb

.field public static final blacklist RECEIVER_ON_ENROLL_RESULT:I = 0xc9

.field public static final blacklist RECEIVER_ON_ERROR:I = 0xcd

.field public static final blacklist RECEIVER_ON_EXT_CMD:I = 0x12d

.field public static final blacklist RECEIVER_ON_LOCKOUT_RESET:I = 0x105

.field public static final blacklist RECEIVER_ON_ON_ACQUIRED:I = 0xca

.field public static final blacklist RECEIVER_ON_PRE_INIT:I = 0xcf

.field public static final blacklist RECEIVER_ON_REMOVED:I = 0xce

.field public static final blacklist SERVICE_DESCRIPTOR:Ljava/lang/String; = "miui.face.FaceService"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "miui.face.FaceService"


# instance fields
.field final synthetic blacklist this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor blacklist <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/MiuiBinderTransaction;

    .line 100
    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IMiuiFaceManager;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
