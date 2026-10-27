.class public Landroid/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DAY:Ljava/lang/String; = "day"

.field private static final greylist-max-o MONTH:Ljava/lang/String; = "month"

.field private static final greylist-max-o YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final greylist mDatePicker:Landroid/widget/DatePicker;

.field private greylist-max-o mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private final greylist-max-o mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 10

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 11

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 15

    .line 111
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    .line 112
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V
    .registers 10

    .line 117
    invoke-static {p1, p2}, Landroid/app/DatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 223
    new-instance p1, Landroid/app/DatePickerDialog$1;

    invoke-direct {p1, p0}, Landroid/app/DatePickerDialog$1;-><init>(Landroid/app/DatePickerDialog;)V

    iput-object p1, p0, Landroid/app/DatePickerDialog;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    .line 119
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 121
    const v0, 0x109006c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 122
    invoke-virtual {p0, p2}, Landroid/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 124
    const v0, 0x104000a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/DatePickerDialog;->setButtonPanelLayoutHint(I)V

    .line 128
    if-eqz p4, :cond_4a

    .line 129
    invoke-virtual {p4, p1}, Ljava/util/Calendar;->get(I)I

    move-result p5

    .line 130
    const/4 p1, 0x2

    invoke-virtual {p4, p1}, Ljava/util/Calendar;->get(I)I

    move-result p6

    .line 131
    const/4 p1, 0x5

    invoke-virtual {p4, p1}, Ljava/util/Calendar;->get(I)I

    move-result p7

    .line 134
    :cond_4a
    const p1, 0x10202c0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/DatePicker;

    iput-object p1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 135
    iget-object p1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1, p5, p6, p7, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 136
    iget-object p1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object p2, p0, Landroid/app/DatePickerDialog;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    invoke-virtual {p1, p2}, Landroid/widget/DatePicker;->setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V

    .line 138
    iput-object p3, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 139
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 14

    .line 92
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    .line 93
    return-void
.end method

.method static greylist-max-o resolveDialogTheme(Landroid/content/Context;I)I
    .registers 4

    .line 142
    if-nez p1, :cond_15

    .line 143
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x10104ac

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 145
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0

    .line 147
    :cond_15
    return p1
.end method


# virtual methods
.method public whitelist getDatePicker()Landroid/widget/DatePicker;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 167
    packed-switch p2, :pswitch_data_2c

    goto :goto_2a

    .line 169
    :pswitch_4
    iget-object p1, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz p1, :cond_2a

    .line 172
    iget-object p1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->clearFocus()V

    .line 173
    iget-object p1, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object p2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 174
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    .line 173
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    goto :goto_2a

    .line 178
    :pswitch_27
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->cancel()V

    .line 181
    :cond_2a
    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch -0x2
        :pswitch_27
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist onDateChanged(Landroid/widget/DatePicker;III)V
    .registers 5

    .line 153
    iget-object p1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 154
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 216
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 217
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 218
    const-string/jumbo v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 219
    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 220
    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2, v0, v1, p1, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 221
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .line 207
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 208
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    const-string/jumbo v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    const-string/jumbo v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    return-object v0
.end method

.method public whitelist setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .registers 2

    .line 162
    iput-object p1, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 163
    return-void
.end method

.method public whitelist updateDate(III)V
    .registers 5

    .line 202
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 203
    return-void
.end method
