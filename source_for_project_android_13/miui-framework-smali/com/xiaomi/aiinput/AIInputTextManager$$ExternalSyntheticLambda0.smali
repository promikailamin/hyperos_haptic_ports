.class public final synthetic Lcom/xiaomi/aiinput/AIInputTextManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/xiaomi/aiinput/AIInputTextManager;

.field public final synthetic blacklist f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/xiaomi/aiinput/AIInputTextManager;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/aiinput/AIInputTextManager$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/aiinput/AIInputTextManager;

    iput-object p2, p0, Lcom/xiaomi/aiinput/AIInputTextManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/aiinput/AIInputTextManager;

    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/aiinput/AIInputTextManager;->lambda$updateAIInputClient$0$com-xiaomi-aiinput-AIInputTextManager(Landroid/app/Activity;)V

    return-void
.end method
