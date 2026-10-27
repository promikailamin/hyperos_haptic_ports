.class public interface abstract Lcom/miui/whetstone/IWhetstoneResult;
.super Ljava/lang/Object;
.source "IWhetstoneResult.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final blacklist TRACSACTION_onResult:I = 0x1

.field public static final blacklist descriptor:Ljava/lang/String; = "com.miui.whetstone.IWhetstoneResult"


# virtual methods
.method public abstract blacklist onResult(Lcom/miui/whetstone/WhetstoneResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
