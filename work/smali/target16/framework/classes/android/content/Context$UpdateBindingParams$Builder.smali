.class public final Landroid/content/Context$UpdateBindingParams$Builder;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Context$UpdateBindingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mFlags:Landroid/content/Context$BindServiceFlags;

.field private blacklist mUnbind:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnection(Landroid/content/Context$UpdateBindingParams$Builder;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Landroid/content/Context$UpdateBindingParams$Builder;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/content/Context$UpdateBindingParams$Builder;)Landroid/content/Context$BindServiceFlags;
    .registers 1

    iget-object p0, p0, Landroid/content/Context$UpdateBindingParams$Builder;->mFlags:Landroid/content/Context$BindServiceFlags;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnbind(Landroid/content/Context$UpdateBindingParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/Context$UpdateBindingParams$Builder;->mUnbind:Z

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/ServiceConnection;)V
    .registers 2

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/content/Context$UpdateBindingParams$Builder;->mConnection:Landroid/content/ServiceConnection;

    .line 977
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/content/Context$UpdateBindingParams$Builder;->mUnbind:Z

    .line 978
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/Context$UpdateBindingParams$Builder;->mFlags:Landroid/content/Context$BindServiceFlags;

    .line 979
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;)V
    .registers 3

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/content/Context$UpdateBindingParams$Builder;->mConnection:Landroid/content/ServiceConnection;

    .line 995
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/content/Context$UpdateBindingParams$Builder;->mUnbind:Z

    .line 996
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context$BindServiceFlags;

    iput-object p1, p0, Landroid/content/Context$UpdateBindingParams$Builder;->mFlags:Landroid/content/Context$BindServiceFlags;

    .line 997
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/Context$UpdateBindingParams;
    .registers 3

    .line 1006
    new-instance v0, Landroid/content/Context$UpdateBindingParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/Context$UpdateBindingParams;-><init>(Landroid/content/Context$UpdateBindingParams$Builder;Landroid/content/Context-IA;)V

    return-object v0
.end method
