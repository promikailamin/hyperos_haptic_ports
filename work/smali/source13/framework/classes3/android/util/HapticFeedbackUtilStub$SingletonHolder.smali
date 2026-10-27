.class public final Landroid/util/HapticFeedbackUtilStub$SingletonHolder;
.super Ljava/lang/Object;
.source "HapticFeedbackUtilStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HapticFeedbackUtilStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/util/HapticFeedbackUtilStub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/util/HapticFeedbackUtilStub;
    .registers 1

    sget-object v0, Landroid/util/HapticFeedbackUtilStub$SingletonHolder;->INSTANCE:Landroid/util/HapticFeedbackUtilStub;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    const-class v0, Landroid/util/HapticFeedbackUtilStub;

    .line 13
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/HapticFeedbackUtilStub;

    sput-object v0, Landroid/util/HapticFeedbackUtilStub$SingletonHolder;->INSTANCE:Landroid/util/HapticFeedbackUtilStub;

    .line 12
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
