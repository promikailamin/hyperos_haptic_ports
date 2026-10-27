.class public final synthetic Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->lambda$onBootPhase$0$com-android-server-ambientcontext-AmbientContextManagerService(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
