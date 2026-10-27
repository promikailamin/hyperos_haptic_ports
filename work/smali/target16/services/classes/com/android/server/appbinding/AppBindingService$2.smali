.class public Lcom/android/server/appbinding/AppBindingService$2;
.super Landroid/database/ContentObserver;
.source "AppBindingService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method public constructor <init>(Lcom/android/server/appbinding/AppBindingService;Landroid/os/Handler;)V
    .registers 3

    .line 302
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 305
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p0}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$mrefreshConstants(Lcom/android/server/appbinding/AppBindingService;)V

    return-void
.end method
