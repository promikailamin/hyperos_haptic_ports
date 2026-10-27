.class public interface abstract Lcom/xiaomi/aiinput/IAIInputTextManager;
.super Ljava/lang/Object;
.source "IAIInputTextManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aiinput/IAIInputTextManager$Stub;,
        Lcom/xiaomi/aiinput/IAIInputTextManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.aiinput.IAIInputTextManager"


# virtual methods
.method public abstract blacklist addClient(Lcom/xiaomi/aiinput/IAIInputTextManagerClient;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAIInputTextClient()Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
