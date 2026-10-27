.class public final synthetic Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/injector/SystemAppOpsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    return-void
.end method


# virtual methods
.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/injector/SystemAppOpsHelper;->lambda$onSystemReady$1$com-android-server-location-injector-SystemAppOpsHelper(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
