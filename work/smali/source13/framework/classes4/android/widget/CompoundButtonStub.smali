.class public interface abstract Landroid/widget/CompoundButtonStub;
.super Ljava/lang/Object;
.source "CompoundButtonStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/widget/CompoundButtonStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    const-class v0, Landroid/widget/CompoundButtonStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButtonStub;

    sput-object v0, Landroid/widget/CompoundButtonStub;->sInstance:Landroid/widget/CompoundButtonStub;

    return-void
.end method

.method public static blacklist getInstance()Landroid/widget/CompoundButtonStub;
    .registers 1

    .line 16
    sget-object v0, Landroid/widget/CompoundButtonStub;->sInstance:Landroid/widget/CompoundButtonStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist performClickHaptic(Landroid/view/View;)V
.end method
