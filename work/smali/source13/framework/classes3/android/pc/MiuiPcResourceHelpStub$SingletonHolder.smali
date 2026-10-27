.class public final Landroid/pc/MiuiPcResourceHelpStub$SingletonHolder;
.super Ljava/lang/Object;
.source "MiuiPcResourceHelpStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pc/MiuiPcResourceHelpStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/pc/MiuiPcResourceHelpStub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/pc/MiuiPcResourceHelpStub;
    .registers 1

    sget-object v0, Landroid/pc/MiuiPcResourceHelpStub$SingletonHolder;->INSTANCE:Landroid/pc/MiuiPcResourceHelpStub;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const-class v0, Landroid/pc/MiuiPcResourceHelpStub;

    .line 14
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pc/MiuiPcResourceHelpStub;

    sput-object v0, Landroid/pc/MiuiPcResourceHelpStub$SingletonHolder;->INSTANCE:Landroid/pc/MiuiPcResourceHelpStub;

    .line 13
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
