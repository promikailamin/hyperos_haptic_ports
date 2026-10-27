.class public final synthetic Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/server/wm/ActivityStartController;->lambda$startActivities$0(I)[Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
