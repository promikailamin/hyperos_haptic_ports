.class Lcom/xiaomi/engine/MiaNodeJNI$InstanceHolder;
.super Ljava/lang/Object;
.source "MiaNodeJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/engine/MiaNodeJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceHolder"
.end annotation


# static fields
.field static blacklist INSTANCE:Lcom/xiaomi/engine/MiaNodeJNI;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/xiaomi/engine/MiaNodeJNI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/engine/MiaNodeJNI;-><init>(Lcom/xiaomi/engine/MiaNodeJNI-IA;)V

    sput-object v0, Lcom/xiaomi/engine/MiaNodeJNI$InstanceHolder;->INSTANCE:Lcom/xiaomi/engine/MiaNodeJNI;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
