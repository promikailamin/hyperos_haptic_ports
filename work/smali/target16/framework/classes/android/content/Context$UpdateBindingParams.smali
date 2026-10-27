.class public final Landroid/content/Context$UpdateBindingParams;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateBindingParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Context$UpdateBindingParams$Builder;
    }
.end annotation


# instance fields
.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mFlags:Landroid/content/Context$BindServiceFlags;

.field private blacklist mUnbind:Z


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context$UpdateBindingParams$Builder;)V
    .registers 3

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    invoke-static {p1}, Landroid/content/Context$UpdateBindingParams$Builder;->-$$Nest$fgetmConnection(Landroid/content/Context$UpdateBindingParams$Builder;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Context$UpdateBindingParams;->mConnection:Landroid/content/ServiceConnection;

    .line 905
    invoke-static {p1}, Landroid/content/Context$UpdateBindingParams$Builder;->-$$Nest$fgetmUnbind(Landroid/content/Context$UpdateBindingParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/Context$UpdateBindingParams;->mUnbind:Z

    .line 906
    invoke-static {p1}, Landroid/content/Context$UpdateBindingParams$Builder;->-$$Nest$fgetmFlags(Landroid/content/Context$UpdateBindingParams$Builder;)Landroid/content/Context$BindServiceFlags;

    move-result-object p1

    iput-object p1, p0, Landroid/content/Context$UpdateBindingParams;->mFlags:Landroid/content/Context$BindServiceFlags;

    .line 907
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context$UpdateBindingParams$Builder;Landroid/content/Context-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/Context$UpdateBindingParams;-><init>(Landroid/content/Context$UpdateBindingParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getConnection()Landroid/content/ServiceConnection;
    .registers 2

    .line 937
    iget-object v0, p0, Landroid/content/Context$UpdateBindingParams;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public blacklist getFlags()Landroid/content/Context$BindServiceFlags;
    .registers 2

    .line 959
    iget-object v0, p0, Landroid/content/Context$UpdateBindingParams;->mFlags:Landroid/content/Context$BindServiceFlags;

    return-object v0
.end method

.method public blacklist isRebind()Z
    .registers 2

    .line 951
    iget-boolean v0, p0, Landroid/content/Context$UpdateBindingParams;->mUnbind:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isUnbind()Z
    .registers 2

    .line 944
    iget-boolean v0, p0, Landroid/content/Context$UpdateBindingParams;->mUnbind:Z

    return v0
.end method

.method public blacklist setRebind(Landroid/content/Context$BindServiceFlags;)V
    .registers 3

    .line 928
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Context$UpdateBindingParams;->mUnbind:Z

    .line 929
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context$BindServiceFlags;

    iput-object p1, p0, Landroid/content/Context$UpdateBindingParams;->mFlags:Landroid/content/Context$BindServiceFlags;

    .line 930
    return-void
.end method

.method public blacklist setUnbind()V
    .registers 2

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Context$UpdateBindingParams;->mUnbind:Z

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Context$UpdateBindingParams;->mFlags:Landroid/content/Context$BindServiceFlags;

    .line 915
    return-void
.end method
