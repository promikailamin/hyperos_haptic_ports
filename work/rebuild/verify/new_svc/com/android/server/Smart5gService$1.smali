.class public Lcom/android/server/Smart5gService$1;
.super Landroid/database/ContentObserver;
.source "Smart5gService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/Smart5gService;


# direct methods
.method public constructor <init>(Lcom/android/server/Smart5gService;Landroid/os/Handler;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/android/server/Smart5gService$1;->this$0:Lcom/android/server/Smart5gService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 90
    const-string p1, "SettingObserver: onChange"

    invoke-static {p1}, Lcom/android/server/Smart5gService;->-$$Nest$smdlog(Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/android/server/Smart5gService$1;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p0}, Lcom/android/server/Smart5gService;->-$$Nest$mupdate(Lcom/android/server/Smart5gService;)V

    return-void
.end method
