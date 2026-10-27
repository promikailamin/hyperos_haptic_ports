.class public final Lcom/miui/xspace/XSpaceManagerImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "XSpaceManagerImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/xspace/XSpaceManagerImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/xspace/XSpaceManagerImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/miui/xspace/XSpaceManagerImpl;

    invoke-direct {v0}, Lcom/miui/xspace/XSpaceManagerImpl;-><init>()V

    sput-object v0, Lcom/miui/xspace/XSpaceManagerImpl$Provider$SINGLETON;->INSTANCE:Lcom/miui/xspace/XSpaceManagerImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
