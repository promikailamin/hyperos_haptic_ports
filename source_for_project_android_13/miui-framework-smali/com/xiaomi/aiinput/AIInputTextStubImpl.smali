.class public Lcom/xiaomi/aiinput/AIInputTextStubImpl;
.super Ljava/lang/Object;
.source "AIInputTextStubImpl.java"

# interfaces
.implements Lcom/xiaomi/aiinput/AIInputTextStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAITextView(Landroid/view/View;)V
    .registers 3
    .param p1, "textView"    # Landroid/view/View;

    .line 17
    if-eqz p1, :cond_23

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_23

    .line 22
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/aiinput/AIInputTextManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/aiinput/AIInputTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/aiinput/AIInputTextManager;->addAITextView(Landroid/view/View;)V

    .line 23
    return-void

    .line 20
    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist updateAIInputClient(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 26
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 29
    :cond_9
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/aiinput/AIInputTextManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/aiinput/AIInputTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/aiinput/AIInputTextManager;->updateAIInputClient(Landroid/app/Activity;)V

    .line 30
    return-void

    .line 27
    :cond_15
    :goto_15
    return-void
.end method
