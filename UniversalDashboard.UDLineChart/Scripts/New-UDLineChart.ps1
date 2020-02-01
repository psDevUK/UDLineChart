<#
.SYNOPSIS
    Sample control for UniversalDashboard.
.DESCRIPTION
    Sample control function for UniversalDashboard. This function must have an ID and return a hash table.
.PARAMETER Id
    An id for the component default value will be generated by new-guid.
.EXAMPLE
    PS C:\> <example usage>
    Explanation of what the example does
.INPUTS
    Inputs (if any)
.OUTPUTS
    Output (if any)
.NOTES
    General notes
#>
function New-UDLineChart {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$dataKeyX,
        [Parameter()]
        [string]$dataKeyY,
        [Parameter()]
        [string]$gridStroke = "#ccc",
        [Parameter()]
        [string]$strokeDasharray = "3 3",
        [Parameter()]
        [int]$width = 500,
        [Parameter()]
        [int]$height = 300,
        [Parameter(Mandatory)]
        [string]$lineDataKey1,
        [Parameter()]
        [string]$lineDataKey2,
        [Parameter(Mandatory)]
        [array]$data,
        [Parameter()]
        [ValidateSet("horizontal", "vertical")]
        [string]$layout = "horizontal",
        [Parameter()]
        [ValidateSet("number", "category")]
        [string]$typeXaxis = "category",
        [Parameter()]
        [ValidateSet("number", "category")]
        [string]$typeYaxis = "number",
        [Parameter()]
        [ValidateSet('basis', 'basisClosed', 'basisOpen', 'linear', 'linearClosed', 'natural', 'monotoneX', 'monotoneY', 'monotone', 'step', 'stepBefore', 'stepAfter')]
        [string]$lineType1,
        [Parameter()]
        [ValidateSet('basis', 'basisClosed', 'basisOpen', 'linear', 'linearClosed', 'natural', 'monotoneX', 'monotoneY', 'monotone', 'step', 'stepBefore', 'stepAfter')]
        [string]$lineType2,
        [Parameter()]
        [string]$lineStroke1 = "#8884d8",
        [Parameter()]
        [string]$lineStroke2 = "#82ca9d",
        [Parameter()]
        [int]$animationBeginLine1 = 1000,
        [Parameter()]
        [int]$animationDurationLine1 = 3000,
        [Parameter()]
        [ValidateSet('ease', 'ease-in', 'ease-out', 'ease-in-out', 'linear')]
        [string]$animationEasingLine1 = 'linear',
        [Parameter()]
        [ValidateSet('line', 'square', 'rect', 'circle', 'cross', 'diamond', 'square', 'star', 'triangle', 'wye', 'none')]
        [string]$lineLegendType1 = 'diamond',
        [int]$animationBeginLine2 = 1000,
        [Parameter()]
        [int]$animationDurationLine2 = 3000,
        [Parameter()]
        [ValidateSet('ease', 'ease-in', 'ease-out', 'ease-in-out', 'linear')]
        [string]$animationEasingLine2 = 'linear',
        [Parameter()]
        [ValidateSet('line', 'square', 'rect', 'circle', 'cross', 'diamond', 'square', 'star', 'triangle', 'wye', 'none')]
        [string]$lineLegendType2 = 'diamond',
        [Parameter()]
        [string]$RefStrokeY,
        [Parameter()]
        [string]$RefStrokeX,
        [Parameter()]
        [string]$RefLineX,
        [Parameter()]
        [int]$RefLineY,
        [Parameter()]
        [string]$RefLabelX,
        [Parameter()]
        [string]$RefLabelY,
        [Parameter()]
        [ValidateSet("top", "middle", "bottom")]
        [string]$legendAlign = "bottom",
        [Parameter()]
        [int]$legendHeight,
        [Parameter()]
        [int]$intervalX,
        [Parameter()]
        [int]$dx,
        [Parameter()]
        [int]$activeDot = 6,
        [Parameter()]
        [ValidateSet("top", "bottom")]
        [string]$orientationX

    )

    End {

        @{
            # The AssetID of the main JS File
            assetId            = $AssetId
            # Tell UD this is a plugin
            isPlugin           = $true
            # This ID must be the same as the one used in the JavaScript to register the control with UD
            type               = "UD-LineChart"
            # An ID is mandatory
            id                 = $Id

            # This is where you can put any other properties. They are passed to the React control's props
            # The keys are case-sensitive in JS.
            dataKeyX           = $dataKeyX
            dataKeyY           = $dataKeyY
            width              = $width
            height             = $height
            dataKey1           = $lineDataKey1
            dataKey2           = $lineDataKey2
            data               = $data
            type1              = $lineType1
            type2              = $lineType2
            stroke1            = $lineStroke1
            stroke2            = $lineStroke2
            layout             = $layout
            animationBegin1    = $animationBeginLine1
            animationDuration1 = $animationDurationLine1
            animationEasing1   = $animationEasingLine1
            legendType1        = $lineLegendType1
            animationBegin2    = $animationBeginLine2
            animationDuration2 = $animationDurationLine2
            animationEasing2   = $animationEasingLine2
            legendType2        = $lineLegendType2
            strokeDasharray    = $strokeDasharray
            typeX              = $typeXaxis
            typeY              = $typeYaxis
            RefStrokeX         = $RefStrokeX
            RefStrokeY         = $RefStrokeY
            RefLabelX          = $RefLabelX
            RefLabelY          = $RefLabelY
            RefLineX           = $RefLineX
            RefLineY           = $RefLineY
            legendAlign        = $legendAlign
            legendHeight       = $legendHeight
            intervalX          = $intervalX
            dx                 = $dx
            orientationX       = $orientationX
            gridStroke         = $gridStroke
            activeDot          = $activeDot
        }

    }
}
