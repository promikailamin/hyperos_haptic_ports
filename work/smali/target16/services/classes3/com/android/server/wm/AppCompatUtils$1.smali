.class public Lcom/android/server/wm/AppCompatUtils$1;
.super Ljava/lang/Object;
.source "AppCompatUtils.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public mRead:Z

.field public mValue:Z

.field public final synthetic val$supplier:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Ljava/util/function/BooleanSupplier;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/server/wm/AppCompatUtils$1;->val$supplier:Ljava/util/function/BooleanSupplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mRead:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mRead:Z

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->val$supplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mValue:Z

    .line 68
    :cond_f
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mValue:Z

    return p0
.end method
