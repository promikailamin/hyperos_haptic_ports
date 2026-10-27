.class Lcom/android/server/wm/WindowSurfacePlacer$Traverser;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowSurfacePlacer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Traverser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowSurfacePlacer;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowSurfacePlacer;Lcom/android/server/wm/WindowSurfacePlacer$Traverser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->-$$Nest$fgetmRenderer(Lcom/android/server/wm/WindowSurfacePlacer;)Landroid/graphics/HardwareRenderer;

    move-result-object v0

    if-nez v0, :cond_12

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v1, Landroid/graphics/HardwareRenderer;

    invoke-direct {v1}, Landroid/graphics/HardwareRenderer;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->-$$Nest$fputmRenderer(Lcom/android/server/wm/WindowSurfacePlacer;Landroid/graphics/HardwareRenderer;)V

    .line 78
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->-$$Nest$fgetmService(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 79
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 80
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    return-void

    .line 80
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
