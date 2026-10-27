.class public Landroid/filterpacks/text/StringSource;
.super Landroid/filterfw/core/Filter;
.source "StringSource.java"


# instance fields
.field private blacklist mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private blacklist mString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stringValue"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 4

    .line 49
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    iget-object v0, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 50
    iget-object v0, p0, Landroid/filterpacks/text/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 51
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 52
    const-string/jumbo v0, "string"

    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/text/StringSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/filterpacks/text/StringSource;->closeOutputPort(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 43
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 44
    const-string/jumbo v0, "string"

    iget-object v1, p0, Landroid/filterpacks/text/StringSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/text/StringSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 45
    return-void
.end method
