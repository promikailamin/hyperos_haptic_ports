.class Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceConfigAccessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 171
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;->this$0:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;->this$0:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-static {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->-$$Nest$mhandleConfigurationInternalChangeOnMainThread(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    .line 175
    return-void
.end method
