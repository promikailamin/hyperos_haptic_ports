.class public Landroid/filterpacks/base/ObjectSource;
.super Landroid/filterfw/core/Filter;
.source "ObjectSource.java"


# instance fields
.field private blacklist mFrame:Landroid/filterfw/core/Frame;

.field private blacklist mObject:Ljava/lang/Object;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "object"
    .end annotation
.end field

.field private blacklist mOutputFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field blacklist mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    nop

    .line 37
    invoke-static {}, Landroid/filterfw/core/FrameFormat;->unspecified()Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 39
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/filterpacks/base/ObjectSource;->mRepeatFrame:Z

    .line 46
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 3

    .line 83
    const-string/jumbo p2, "object"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 84
    iget-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz p1, :cond_15

    .line 85
    iget-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 86
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 89
    :cond_15
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 4

    .line 56
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    if-nez v0, :cond_30

    .line 57
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_28

    .line 60
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    iput-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 62
    iget-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    goto :goto_30

    .line 58
    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ObjectSource producing frame with no object set!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_30
    :goto_30
    iget-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    const-string v0, "frame"

    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/base/ObjectSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 70
    iget-boolean p1, p0, Landroid/filterpacks/base/ObjectSource;->mRepeatFrame:Z

    if-nez p1, :cond_3e

    .line 71
    invoke-virtual {p0, v0}, Landroid/filterpacks/base/ObjectSource;->closeOutputPort(Ljava/lang/String;)V

    .line 73
    :cond_3e
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 50
    const-string v0, "frame"

    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/base/ObjectSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 51
    return-void
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 2

    .line 77
    iget-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 78
    return-void
.end method
