.class public final Landroid/pc/MiuiPcManagerStub$SingletonHolder;
.super Ljava/lang/Object;
.source "MiuiPcManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pc/MiuiPcManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/pc/MiuiPcManagerStub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/pc/MiuiPcManagerStub;
    .registers 1

    sget-object v0, Landroid/pc/MiuiPcManagerStub$SingletonHolder;->INSTANCE:Landroid/pc/MiuiPcManagerStub;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    const-class v0, Landroid/pc/MiuiPcManagerStub;

    .line 13
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pc/MiuiPcManagerStub;

    sput-object v0, Landroid/pc/MiuiPcManagerStub$SingletonHolder;->INSTANCE:Landroid/pc/MiuiPcManagerStub;

    .line 12
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
