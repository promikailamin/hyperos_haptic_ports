.class public final synthetic Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/net/wifi/WifiSsid;

    invoke-static {p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->lambda$ssidsToStrings$0(Landroid/net/wifi/WifiSsid;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
