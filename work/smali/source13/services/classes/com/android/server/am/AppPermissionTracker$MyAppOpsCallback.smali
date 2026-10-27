.class Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppPermissionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAppOpsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPermissionTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/am/AppPermissionTracker;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;->this$0:Lcom/android/server/am/AppPermissionTracker;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/AppPermissionTracker;Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;-><init>(Lcom/android/server/am/AppPermissionTracker;)V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;->this$0:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {v0}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$fgetmHandler(Lcom/android/server/am/AppPermissionTracker;)Lcom/android/server/am/AppPermissionTracker$MyHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/am/AppPermissionTracker$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 398
    return-void
.end method
