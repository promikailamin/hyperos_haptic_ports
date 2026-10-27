.class public Lcom/android/server/wm/WindowContainer$2;
.super Ljava/lang/Object;
.source "WindowContainer.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public final synthetic val$listener:Lcom/android/server/wm/ConfigurationContainerListener;

.field public final synthetic val$receiver:Lcom/android/server/wm/WindowContainer;

.field public final synthetic val$supplier:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ConfigurationContainerListener;)V
    .registers 4

    .line 3670
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$2;->val$receiver:Lcom/android/server/wm/WindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$2;->val$supplier:Lcom/android/server/wm/WindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/WindowContainer$2;->val$listener:Lcom/android/server/wm/ConfigurationContainerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoved()V
    .registers 2

    .line 3673
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$2;->val$receiver:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 3674
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$2;->val$supplier:Lcom/android/server/wm/WindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$2;->val$listener:Lcom/android/server/wm/ConfigurationContainerListener;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    return-void
.end method
