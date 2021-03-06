public class DCRemover extends Chubgraph
{
    // Simple DC Remover made with
    // a simple one pole filter
    
    inlet => Gain subtract => outlet;
    inlet => OnePole onepole  => subtract; 

    0.9995 => float p;
    subtract.op(2);
    onepole.pole(p);
    // for p > 0:
    //     onepole.pole(p)
    // is equivalent to:
    //     onepole.b0(1-p); onepole.a1(-p);
}
