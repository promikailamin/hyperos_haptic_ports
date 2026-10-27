.class Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# instance fields
.field public final mToken:Landroid/window/WindowContainerToken;

.field public final mUid:I


# direct methods
.method public constructor <init>(ILandroid/window/WindowContainerToken;)V
    .registers 3

    .line 9533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9534
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mUid:I

    .line 9535
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mToken:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/window/WindowContainerToken;Lcom/android/server/wm/WindowManagerService-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;-><init>(ILandroid/window/WindowContainerToken;)V

    return-void
.end method


# virtual methods
.method public getToken()Landroid/window/WindowContainerToken;
    .registers 1

    .line 9544
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mToken:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 9539
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mUid:I

    return p0
.end method
