.class public Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "SenseProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V

    .line 146
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object p1

    if-nez p1, :cond_16

    .line 148
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    :cond_16
    return-void
.end method
