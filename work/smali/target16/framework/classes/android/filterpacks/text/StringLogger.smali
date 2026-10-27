.class public Landroid/filterpacks/text/StringLogger;
.super Landroid/filterfw/core/Filter;
.source "StringLogger.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 3

    .line 44
    const-string/jumbo p1, "string"

    invoke-virtual {p0, p1}, Landroid/filterpacks/text/StringLogger;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    const-string v0, "StringLogger"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 38
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "string"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/text/StringLogger;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 40
    return-void
.end method
