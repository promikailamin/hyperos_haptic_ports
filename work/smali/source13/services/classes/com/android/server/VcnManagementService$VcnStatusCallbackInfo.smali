.class Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
.super Ljava/lang/Object;
.source "VcnManagementService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VcnStatusCallbackInfo"
.end annotation


# instance fields
.field final mCallback:Landroid/net/vcn/IVcnStatusCallback;

.field final mPkgName:Ljava/lang/String;

.field final mSubGroup:Landroid/os/ParcelUuid;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/VcnManagementService;
    .param p2, "subGroup"    # Landroid/os/ParcelUuid;
    .param p3, "callback"    # Landroid/net/vcn/IVcnStatusCallback;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .line 1054
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    iput-object p2, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mSubGroup:Landroid/os/ParcelUuid;

    .line 1056
    iput-object p3, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    .line 1057
    iput-object p4, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mPkgName:Ljava/lang/String;

    .line 1058
    iput p5, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mUid:I

    .line 1059
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;ILcom/android/server/VcnManagementService$VcnStatusCallbackInfo-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1063
    invoke-static {}, Lcom/android/server/VcnManagementService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app died without unregistering VcnStatusCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->this$0:Lcom/android/server/VcnManagementService;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/VcnManagementService;->unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V

    .line 1065
    return-void
.end method
