.class Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 180
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;->this$0:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 183
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;->this$0:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-static {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->-$$Nest$mhandleConfigurationInternalChangeOnMainThread(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    .line 184
    return-void
.end method
