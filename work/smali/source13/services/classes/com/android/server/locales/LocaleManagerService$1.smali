.class Lcom/android/server/locales/LocaleManagerService$1;
.super Ljava/lang/Object;
.source "LocaleManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locales/LocaleManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locales/LocaleManagerService;

.field final synthetic val$systemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/SystemAppUpdateTracker;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/locales/LocaleManagerService;

    .line 85
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService$1;->this$0:Lcom/android/server/locales/LocaleManagerService;

    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerService$1;->val$systemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService$1;->val$systemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    invoke-virtual {v0}, Lcom/android/server/locales/SystemAppUpdateTracker;->init()V

    .line 89
    return-void
.end method
