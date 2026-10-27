.class public Landroid/view/WindowLayoutStub$Instance;
.super Ljava/lang/Object;
.source "WindowLayoutStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowLayoutStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# static fields
.field private static final blacklist sInstance:Landroid/view/WindowLayoutStub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsInstance()Landroid/view/WindowLayoutStub;
    .registers 1

    sget-object v0, Landroid/view/WindowLayoutStub$Instance;->sInstance:Landroid/view/WindowLayoutStub;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const-class v0, Landroid/view/WindowLayoutStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowLayoutStub;

    sput-object v0, Landroid/view/WindowLayoutStub$Instance;->sInstance:Landroid/view/WindowLayoutStub;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
