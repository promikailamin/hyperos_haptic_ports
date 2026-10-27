.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/AppRestrictionController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController;->lambda$onSystemReady$0$com-android-server-am-AppRestrictionController()V

    return-void
.end method
