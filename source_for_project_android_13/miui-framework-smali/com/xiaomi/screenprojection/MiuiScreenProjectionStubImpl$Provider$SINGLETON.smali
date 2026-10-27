.class public final Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MiuiScreenProjectionStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;

    invoke-direct {v0}, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;-><init>()V

    sput-object v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl$Provider$SINGLETON;->INSTANCE:Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
