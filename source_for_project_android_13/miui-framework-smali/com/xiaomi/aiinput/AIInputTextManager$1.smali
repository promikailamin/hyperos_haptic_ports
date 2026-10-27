.class Lcom/xiaomi/aiinput/AIInputTextManager$1;
.super Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;
.source "AIInputTextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiinput/AIInputTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/aiinput/AIInputTextManager;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/aiinput/AIInputTextManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/xiaomi/aiinput/AIInputTextManager;

    .line 83
    iput-object p1, p0, Lcom/xiaomi/aiinput/AIInputTextManager$1;->this$0:Lcom/xiaomi/aiinput/AIInputTextManager;

    invoke-direct {p0}, Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getFocusedAITextInfo(Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 6
    .param p1, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 86
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 87
    .local v0, "sargs":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager$1;->this$0:Lcom/xiaomi/aiinput/AIInputTextManager;

    iget-object v1, v1, Lcom/xiaomi/aiinput/AIInputTextManager;->mH:Lcom/xiaomi/aiinput/AIInputTextManager$H;

    iget-object v2, p0, Lcom/xiaomi/aiinput/AIInputTextManager$1;->this$0:Lcom/xiaomi/aiinput/AIInputTextManager;

    iget-object v2, v2, Lcom/xiaomi/aiinput/AIInputTextManager;->mH:Lcom/xiaomi/aiinput/AIInputTextManager$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/aiinput/AIInputTextManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/aiinput/AIInputTextManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 89
    return-void
.end method

.method public blacklist insertFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 7
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 101
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 102
    .local v0, "sargs":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 103
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager$1;->this$0:Lcom/xiaomi/aiinput/AIInputTextManager;

    iget-object v1, v1, Lcom/xiaomi/aiinput/AIInputTextManager;->mH:Lcom/xiaomi/aiinput/AIInputTextManager$H;

    iget-object v2, p0, Lcom/xiaomi/aiinput/AIInputTextManager$1;->this$0:Lcom/xiaomi/aiinput/AIInputTextManager;

    iget-object v2, v2, Lcom/xiaomi/aiinput/AIInputTextManager;->mH:Lcom/xiaomi/aiinput/AIInputTextManager$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/aiinput/AIInputTextManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/aiinput/AIInputTextManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public blacklist setFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 7
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 93
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 94
    .local v0, "sargs":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 95
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/xiaomi/aiinput/AIInputTextManager$1;->this$0:Lcom/xiaomi/aiinput/AIInputTextManager;

    iget-object v1, v1, Lcom/xiaomi/aiinput/AIInputTextManager;->mH:Lcom/xiaomi/aiinput/AIInputTextManager$H;

    iget-object v2, p0, Lcom/xiaomi/aiinput/AIInputTextManager$1;->this$0:Lcom/xiaomi/aiinput/AIInputTextManager;

    iget-object v2, v2, Lcom/xiaomi/aiinput/AIInputTextManager;->mH:Lcom/xiaomi/aiinput/AIInputTextManager$H;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/aiinput/AIInputTextManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/aiinput/AIInputTextManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 97
    return-void
.end method
