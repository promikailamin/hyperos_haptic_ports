.class public Lcom/android/server/wm/RectInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "RectInsetsSourceProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/RectInsetsSourceProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method onPostLayout()V
    .registers 3

    .line 49
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 50
    sget-object v0, Lcom/android/server/wm/RectInsetsSourceProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostLayout(), not calling super.onPostLayout()."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_c
    return-void
.end method

.method setRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/RectInsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, p1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 44
    iget-object v0, p0, Lcom/android/server/wm/RectInsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 45
    return-void
.end method
