.class public final Landroid/util/MiuiFreeformPcUtilStub$SingletonHolder;
.super Ljava/lang/Object;
.source "MiuiFreeformPcUtilStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MiuiFreeformPcUtilStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/util/MiuiFreeformPcUtilStub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/util/MiuiFreeformPcUtilStub;
    .registers 1

    sget-object v0, Landroid/util/MiuiFreeformPcUtilStub$SingletonHolder;->INSTANCE:Landroid/util/MiuiFreeformPcUtilStub;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-class v0, Landroid/util/MiuiFreeformPcUtilStub;

    .line 11
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MiuiFreeformPcUtilStub;

    sput-object v0, Landroid/util/MiuiFreeformPcUtilStub$SingletonHolder;->INSTANCE:Landroid/util/MiuiFreeformPcUtilStub;

    .line 10
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
