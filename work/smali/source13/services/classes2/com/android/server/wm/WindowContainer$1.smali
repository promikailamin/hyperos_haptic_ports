.class Lcom/android/server/wm/WindowContainer$1;
.super Ljava/lang/Object;
.source "WindowContainer.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowContainer;->overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$receiver:Lcom/android/server/wm/WindowContainer;

.field final synthetic val$supplier:Lcom/android/server/wm/WindowContainer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 4169
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$1;->val$receiver:Lcom/android/server/wm/WindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$1;->val$supplier:Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "mergedOverrideConfig"    # Landroid/content/res/Configuration;

    .line 4172
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$1;->val$receiver:Lcom/android/server/wm/WindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$1;->val$supplier:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4173
    return-void
.end method
