.class public Lcom/android/server/display/DisplayManagerService$4;
.super Landroid/app/TaskStackListener;
.source "DisplayManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 3851
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$4;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockTaskModeChanged(I)V
    .registers 2

    .line 3854
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$4;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mupdateMirrorBuiltInDisplaySettingLocked(Lcom/android/server/display/DisplayManagerService;Z)Z

    return-void
.end method
