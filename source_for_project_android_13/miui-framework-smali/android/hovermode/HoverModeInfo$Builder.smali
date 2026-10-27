.class public Landroid/hovermode/HoverModeInfo$Builder;
.super Ljava/lang/Object;
.source "HoverModeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hovermode/HoverModeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field blacklist mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mApplicationName:Ljava/lang/String;

.field blacklist mDisableVersionCode:J

.field blacklist mEnableTouchPanel:Z

.field public blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hovermode/HoverModeInfo$Builder;->mActivities:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hovermode/HoverModeInfo$Builder;->mEnableTouchPanel:Z

    .line 125
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/hovermode/HoverModeInfo$Builder;->mDisableVersionCode:J

    .line 128
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hovermode/HoverModeInfo;
    .registers 4

    .line 157
    iget-object v0, p0, Landroid/hovermode/HoverModeInfo$Builder;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 158
    const-string v0, "HoverModeInfo"

    const-string v2, "package name is null, pls check"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-object v1

    .line 161
    :cond_d
    new-instance v0, Landroid/hovermode/HoverModeInfo;

    invoke-direct {v0, p0, v1}, Landroid/hovermode/HoverModeInfo;-><init>(Landroid/hovermode/HoverModeInfo$Builder;Landroid/hovermode/HoverModeInfo-IA;)V

    return-object v0
.end method

.method public blacklist setActivities(Ljava/util/ArrayList;)Landroid/hovermode/HoverModeInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hovermode/HoverModeInfo$Builder;"
        }
    .end annotation

    .line 141
    .local p1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/hovermode/HoverModeInfo$Builder;->mActivities:Ljava/util/ArrayList;

    .line 142
    return-object p0
.end method

.method public blacklist setApplicationName(Ljava/lang/String;)Landroid/hovermode/HoverModeInfo$Builder;
    .registers 2
    .param p1, "applicationName"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Landroid/hovermode/HoverModeInfo$Builder;->mApplicationName:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public blacklist setDisableVersionCode(J)Landroid/hovermode/HoverModeInfo$Builder;
    .registers 3
    .param p1, "disableVersionCode"    # J

    .line 151
    iput-wide p1, p0, Landroid/hovermode/HoverModeInfo$Builder;->mDisableVersionCode:J

    .line 152
    return-object p0
.end method

.method public blacklist setEnableTouchPanel(Z)Landroid/hovermode/HoverModeInfo$Builder;
    .registers 2
    .param p1, "enableTouchPanel"    # Z

    .line 146
    iput-boolean p1, p0, Landroid/hovermode/HoverModeInfo$Builder;->mEnableTouchPanel:Z

    .line 147
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/hovermode/HoverModeInfo$Builder;
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 131
    iput-object p1, p0, Landroid/hovermode/HoverModeInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 132
    return-object p0
.end method
