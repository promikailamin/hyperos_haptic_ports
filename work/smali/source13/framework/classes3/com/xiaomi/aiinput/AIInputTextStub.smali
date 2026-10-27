.class public interface abstract Lcom/xiaomi/aiinput/AIInputTextStub;
.super Ljava/lang/Object;
.source "AIInputTextStub.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "AIInputTextStub"

.field public static final blacklist sInstance:Lcom/xiaomi/aiinput/AIInputTextStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/xiaomi/aiinput/AIInputTextStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/aiinput/AIInputTextStub;

    sput-object v0, Lcom/xiaomi/aiinput/AIInputTextStub;->sInstance:Lcom/xiaomi/aiinput/AIInputTextStub;

    return-void
.end method

.method public static blacklist getInstance()Lcom/xiaomi/aiinput/AIInputTextStub;
    .registers 1

    .line 19
    sget-object v0, Lcom/xiaomi/aiinput/AIInputTextStub;->sInstance:Lcom/xiaomi/aiinput/AIInputTextStub;

    return-object v0
.end method


# virtual methods
.method public blacklist addAITextView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 24
    return-void
.end method

.method public blacklist updateAIInputClient(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 28
    return-void
.end method
