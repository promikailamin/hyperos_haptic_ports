.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/ProxyManager;

    return-void
.end method


# virtual methods
.method public final onAppsRunningOnVirtualDeviceChanged(ILandroid/util/ArraySet;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->notifyProxyOfRunningAppsChange(ILandroid/util/ArraySet;)V

    return-void
.end method
