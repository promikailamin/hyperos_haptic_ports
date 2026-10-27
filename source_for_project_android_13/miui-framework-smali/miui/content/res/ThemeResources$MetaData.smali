.class public final Lmiui/content/res/ThemeResources$MetaData;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MetaData"
.end annotation


# instance fields
.field public mSupportFile:Z

.field public mSupportValue:Z

.field public mThemePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "supportValue"    # Z
    .param p3, "supportFile"    # Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    .line 64
    iput-boolean p2, p0, Lmiui/content/res/ThemeResources$MetaData;->mSupportValue:Z

    .line 65
    iput-boolean p3, p0, Lmiui/content/res/ThemeResources$MetaData;->mSupportFile:Z

    .line 66
    return-void
.end method
