.class Lcom/android/server/wm/WindowContainer$2;
.super Ljava/lang/Object;
.source "WindowContainer.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowContainer;->overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/server/wm/ConfigurationContainerListener;

.field final synthetic val$receiver:Lcom/android/server/wm/WindowContainer;

.field final synthetic val$supplier:Lcom/android/server/wm/WindowContainer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ConfigurationContainerListener;)V
    .registers 4

    .line 4176
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$2;->val$receiver:Lcom/android/server/wm/WindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$2;->val$supplier:Lcom/android/server/wm/WindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/WindowContainer$2;->val$listener:Lcom/android/server/wm/ConfigurationContainerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoved()V
    .registers 3

    .line 4179
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$2;->val$receiver:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 4180
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$2;->val$supplier:Lcom/android/server/wm/WindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$2;->val$listener:Lcom/android/server/wm/ConfigurationContainerListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 4181
    return-void
.end method
