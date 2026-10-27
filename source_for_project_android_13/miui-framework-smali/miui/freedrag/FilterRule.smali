.class public Lmiui/freedrag/FilterRule;
.super Ljava/lang/Object;
.source "FilterRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/freedrag/FilterRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist activityClass:Ljava/lang/String;

.field private final blacklist packageName:Ljava/lang/String;

.field private final blacklist viewClass:Ljava/lang/String;

.field private transient blacklist viewClassT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lmiui/freedrag/FilterRule$1;

    invoke-direct {v0}, Lmiui/freedrag/FilterRule$1;-><init>()V

    sput-object v0, Lmiui/freedrag/FilterRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/freedrag/FilterRule;->viewClassT:Ljava/lang/Class;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/freedrag/FilterRule;->packageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/freedrag/FilterRule;->activityClass:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/freedrag/FilterRule;->viewClass:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityClass"    # Ljava/lang/String;
    .param p3, "viewClass"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/freedrag/FilterRule;->viewClassT:Ljava/lang/Class;

    .line 59
    iput-object p1, p0, Lmiui/freedrag/FilterRule;->packageName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lmiui/freedrag/FilterRule;->activityClass:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lmiui/freedrag/FilterRule;->viewClass:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private blacklist loadViewClass(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 29
    iget-object v0, p0, Lmiui/freedrag/FilterRule;->viewClass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lmiui/freedrag/FilterRule;->viewClassT:Ljava/lang/Class;

    if-nez v0, :cond_17

    .line 31
    :try_start_c
    iget-object v0, p0, Lmiui/freedrag/FilterRule;->viewClass:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lmiui/freedrag/FilterRule;->viewClassT:Ljava/lang/Class;
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_17

    .line 32
    :catchall_16
    move-exception v0

    .line 34
    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public blacklist check(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activityClass"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/freedrag/FilterRule;->loadViewClass(Ljava/lang/ClassLoader;)V

    .line 24
    iget-object v0, p0, Lmiui/freedrag/FilterRule;->activityClass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lmiui/freedrag/FilterRule;->activityClass:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_1b
    iget-object v0, p0, Lmiui/freedrag/FilterRule;->viewClass:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lmiui/freedrag/FilterRule;->viewClassT:Ljava/lang/Class;

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v0, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v0, 0x1

    .line 24
    :goto_31
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lmiui/freedrag/FilterRule;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterRule{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/freedrag/FilterRule;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", activityClass=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/freedrag/FilterRule;->activityClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", viewClass=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/freedrag/FilterRule;->viewClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewClassT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/freedrag/FilterRule;->viewClassT:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Lmiui/freedrag/FilterRule;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lmiui/freedrag/FilterRule;->activityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lmiui/freedrag/FilterRule;->viewClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
