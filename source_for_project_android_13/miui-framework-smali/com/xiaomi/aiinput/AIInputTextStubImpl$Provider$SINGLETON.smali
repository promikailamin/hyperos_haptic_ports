.class public final Lcom/xiaomi/aiinput/AIInputTextStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "AIInputTextStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiinput/AIInputTextStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/xiaomi/aiinput/AIInputTextStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/xiaomi/aiinput/AIInputTextStubImpl;

    invoke-direct {v0}, Lcom/xiaomi/aiinput/AIInputTextStubImpl;-><init>()V

    sput-object v0, Lcom/xiaomi/aiinput/AIInputTextStubImpl$Provider$SINGLETON;->INSTANCE:Lcom/xiaomi/aiinput/AIInputTextStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
